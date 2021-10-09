from nrf24l01 import NRF24L01
from machine import SPI, Pin,PWM
from time import sleep
import struct
import math

csn = Pin(14, mode=Pin.OUT, value=1) # Chip Select Not
ce = Pin(17, mode=Pin.OUT, value=0)  # Chip Enable
led = Pin(25, Pin.OUT)               # Onboard LED
payload_size = 20

# Handle
handle_forward  = Pin(10, Pin.OUT)    # Relay 1.
handle_backward = Pin(11, Pin.OUT)    # Relay 2.

# Set both relays to off position
handle_forward.value(1)
handle_backward.value(1)

# Throttle
pwm = PWM(Pin(22))                    # Throttle pin.
pwm.freq(1000)                        # Establish frequencry for throttle.

# Set both relays to off position
handle_forward.value(1)
handle_backward.value(1)

# Stepper motor
disable = Pin(21, Pin.OUT) # Control stepper on or off.
disable.value(1)
step = Pin(12)                        # Pin to sent PWM signal to.                        # Starting direction.
direction = Pin(13, Pin.OUT)


@rp2.asm_pio(set_init=rp2.PIO.OUT_LOW)
def move():
    """To control speed just modify the amount/value of nop[dely amount 0-31]."""
    wrap_target()
    set(pins, 1)   [31]
    nop()          [31]
    set(pins, 0)   [31]
    nop()          [31]
    wrap()

# Instantiate a state machine with the move program, at 100000Hz, with set base to step pin.
stepper = rp2.StateMachine(0, move, freq=100000, set_base=step)

#role = "send"
role = "receive"

if role == "send":
    send_pipe = b"\xe1\xf0\xf0\xf0\xf0"
    receive_pipe = b"\xd2\xf0\xf0\xf0\xf0"
else:
    send_pipe = b"\xd2\xf0\xf0\xf0\xf0"
    receive_pipe = b"\xe1\xf0\xf0\xf0\xf0"

def setup():
    print("Initialising the nRF24L0+ Module")
    nrf = NRF24L01(SPI(0), csn, ce, payload_size=payload_size)
    nrf.open_tx_pipe(send_pipe)
    nrf.open_rx_pipe(1, receive_pipe)
    nrf.start_listening()
    return nrf

def flash_led(times:int=None):
    ''' Flashed the built in LED the number of times defined in the times parameter '''
    for _ in range(times):
        led.value(1)
        sleep(0.01)
        led.value(0)
        sleep(0.01)

def send(nrf, msg):
    print("sending message.", msg)
    nrf.stop_listening()
    for n in range(len(msg)):
        try:
            encoded_string = msg[n].encode()
            byte_array = bytearray(encoded_string)
            buf = struct.pack("s", byte_array)
            nrf.send(buf)
            # print(role,"message",msg[n],"sent")
            flash_led(1)
        except OSError:
            print(role,"Sorry message not sent")
    nrf.send("\n")
    nrf.start_listening()

def auto_ack(nrf):
    """Enables auto-ack on all pipes."""
    nrf.reg_write(0x01, 0b11111000)

def parse_incoming(msg):
    """Parse the imcoming message. The 9 is for the wierd first bit."""
    if msg[0] == "9":
        msg = msg[1:]
    return [int(x) for x in msg.split(",")]

def valmap(value, istart, istop, ostart, ostop):
    """ Maps value from one scale to anther scale."""
    return ostart + (ostop - ostart) * ((value - istart) / (istop - istart))


# main code loop
nrf = setup()
auto_ack(nrf)
nrf.start_listening()
msg_string = ""

while True:
    msg = ""
    # Check for Messages
    if nrf.any():
        package = nrf.recv()          
        message = struct.unpack("s",package)
        msg = message[0].decode()
         
        # Check for the new line character
        if (msg == "\n") and (len(msg_string) <= 20):
            try:
                data = parse_incoming(msg_string)
                x,y,z = data
                
                """if z > 40000:
                    handle_forward.value(0)
                elif z < 20000:
                    handle_backward.value(0)
                else:
                    handle_backward.value(1)
                    handle_forward.value(1)"""
                    
                if x > 50000 and x< 70000:
                    print("move right")
                    # Establish what the direction the wheel should be moving to.
                    direction.value(0)
                    # Step to that direction while updating the global position.  
                    stepper.active(1)
                    
                elif x < 10000 and x > 0:
                    print("move left")
                    # Establish what the direction the wheel should be moving to.
                    direction.value(1)
                    # Step to that direction while updating the global position.  
                    stepper.active(1)
                    #turn left
                else:
                    stepper.active(0)
                    # Dont move.
                
                
                """mappedx = valmap(x, 280, 65000, -33000, 33000)
                mappedy = valmap(y, 280, 65000, -33000, 33000)
                throttle = math.sqrt(mappedx**2 + mappedy**2)"""
                
                if z < 5000:
                    z = 20000
                else:
                    z = 0
                pwm.duty_u16(int(z))
                
                msg_string = ""
            except ValueError:
                pass
            except IndexError:
                pass
        else:
            if len(msg_string) <= 20:
                msg_string = msg_string + msg
            else:
                msg_string = ""

                
