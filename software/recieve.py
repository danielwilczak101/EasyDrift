from machine import Pin, SPI, PWM
from nrf24l01 import NRF24L01
import struct
import math

# Handle
handle_forward  = Pin(17, Pin.OUT)    # Relay 1.
handle_backward = Pin(16, Pin.OUT)    # Relay 2.

# Radio
csn = Pin(15, mode=Pin.OUT, value=1)  # chip select not.
ce  = Pin(14, mode=Pin.OUT, value=0)  # chip enable.

# Throttle
pwm = PWM(Pin(28))                    # Throttle pin.
pwm.freg(1000)                        # Establish frequencry for throttle.

# Stepper motor
disable = PWM(Pin(13))                # Control stepper on or off.
direction = 0                         # Starting direction.
step = Pin(17)                        # Pin to sent PWM signal to.

# Addresses are in little-endian format. They correspond to big-endian
# 0xf0f0f0f0e1, 0xf0f0f0f0d2 - swap these on the other Pico!
pipes = (b"\xd2\xf0\xf0\xf0\xf0", b"\xe1\xf0\xf0\xf0\xf0")

# Set both relays to off position
handle_forward.value(1)
handle_backward.value(1)

# Instantiate a state machine with the move program, at 100000Hz, with set base to step pin.
stepper = rp2.StateMachine(0, move, freq=100000, set_base=step)

def control(nrf) -> None:
    """Main logic behind how the cart will react to radio control signals.

    Recieved data:

    data = 00000,00000 = x,y
  
    Example:
        [x, y, [Forward, Backward or middle]]
        [0 - 70000, 0-70000, *0-2]
    """

    # Wheel will start at 0 position by the handler and move to center forward postion.


    while True:
        if nrf.any():
            buf = nrf.recv()
            recieved = struct.unpack("i", buf)[0]
            
            # Translate what we recieved into throttle values
            x, y = recieved[:5], recieved[5:]

            # Translate x, y to throttle values.
            mappedx = valmap(x, 280, 65000, -33000, 33000)
            mappedy = valmap(y, 280, 65000, -33000, 33000)
            throttle = math.sqrt(mappedx**2 + mappedy**2)
            throttle = throttle if throttle < 33000 else 33000
            
            # PWM for throttle value is Min power = 60,000 Max power = 0
            max_power = 50000
            throttle = valmap(throttle, 0, 33000, 60000, max_power)
            throttle = throttle if throttle < 59000 else 60000

            # Establish what the direction the wheel should be moving to.
            direction = direction if mappedx > 0 else 1
            
            # Step to that direction while updating the global position.  
             
            stepper.active(1)


@rp2.asm_pio(set_init=rp2.PIO.OUT_LOW)
def move():
    """To control speed just modify the amount/value of nop[dely amount 0-31]."""
    wrap_target()
    set(pins, 1)   [31]
    nop()          [31]
    nop()          [31]
    set(pins, 0)   [31]
    nop()          [31]
    nop()          [31]
    wrap()

def valmap(value, istart, istop, ostart, ostop):
    """ Maps value from one scale to anther scale."""
    return ostart + (ostop - ostart) * ((value - istart) / (istop - istart))

def auto_ack(nrf):
    """Enables auto-ack on all pipes"""
    nrf.reg_write(0x01, 0b11111000)

def setup() -> None:
    """Setup radio transiever to recieve commands and transmit verification."""
    nrf = NRF24L01(SPI(0), csn, ce, payload_size=10)
    nrf.open_tx_pipe(pipes[0])
    nrf.open_rx_pipe(1, pipes[1])
    nrf.start_listening()
    led.value(0)
    return nrf
    

# Main program.
nrf = setup()
auto_ack(nrf)
control(nrf)

