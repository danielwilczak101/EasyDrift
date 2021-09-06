from machine import Pin, SPI, PWM
from nrf24l01 import NRF24L01
import struct

handle_forward  = Pin(17, Pin.OUT)    # Relay 1
handle_backward = Pin(16, Pin.OUT)    # Relay 2
led = Pin(25, Pin.OUT)                # LED
btn = Pin(28, Pin.IN, Pin.PULL_DOWN)  # button press
csn = Pin(15, mode=Pin.OUT, value=1)  # chip select not
ce  = Pin(14, mode=Pin.OUT, value=0)  # chip enable
pwm = PWM(Pin(28)) # Throttle pin.
pwm.freg(1000)

# Addresses are in little-endian format. They correspond to big-endian
# 0xf0f0f0f0e1, 0xf0f0f0f0d2 - swap these on the other Pico!
pipes = (b"\xd2\xf0\xf0\xf0\xf0", b"\xe1\xf0\xf0\xf0\xf0")

# Set both relays to off position
handle_forward.value(1)
handle_backward.value(1)

def setup() -> None:
    """Setup radio transiever to recieve commands and transmit verification."""
    nrf = NRF24L01(SPI(0), csn, ce, payload_size=8)
    nrf.open_tx_pipe(pipes[0])
    nrf.open_rx_pipe(1, pipes[1])
    nrf.start_listening()
    led.value(0)
    return nrf

def control(nrf) -> None:
    """Main logic behind how the cart will react to radio control signals.
    
    How logic should work:

    Recieved data:
  
    Example:
        [x, y, throotle value, [Forward, Backward or middle]]
        [0 - 70000, 0-70000, 52000-0, 0-2]

        Decode based on transmit size:
        



    
    """

    while True:
        if nrf.any():
            buf = nrf.recv()
            got = struct.unpack("i", buf)[0]
            print("rx", got)
            if (got == 1):
                
                handle_forward.value(0)
            elif (got == 2):
                handle_backward.value(0)
            elif (got == 3):
                #left
                pass
            elif (got == 4):
                #right
                pass
            elif(got == 5):
                # Power
                pwm.duty_u16(50000)
            elif(got == 6):
                # No power
                pwm.duty_u16(60000)
            else:
                handle_forward.value(1)
                led.value(0)

def auto_ack(nrf):
    """Enables auto-ack on all pipes"""
    nrf.reg_write(0x01, 0b11111000)  
    

# Main program.
nrf = setup()
auto_ack(nrf)
control(nrf)

