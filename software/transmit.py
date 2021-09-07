from machine import Pin, SPI, ADC
from nrf24l01 import NRF24L01
import struct
import time
import utime
import math

# Radio
csn = Pin(15, mode=Pin.OUT, value=1)  # chip select not
ce  = Pin(14, mode=Pin.OUT, value=0)  # chip enable

# Buttons
left = Pin(0, Pin.IN, Pin.PULL_DOWN)  # left button
right = Pin(1, Pin.IN, Pin.PULL_DOWN)  # right button

# Right Analog stick
xAxis = ADC(Pin(26))
yAxis = ADC(Pin(27))

# Addresses are in little-endian format. They correspond to big-endian
# 0xf0f0f0f0e1, 0xf0f0f0f0d2 - swap these on the other Pico!
pipes = (b"\xe1\xf0\xf0\xf0\xf0", b"\xd2\xf0\xf0\xf0\xf0")

def control(nrf):
    """Main logic behind how the cart will send radio control signals.
    
    How the logic should work:

        Example:
        More complex but greater control
        [x, y [Forward, Backward or middle]]
        [0 - 70000, 0-70000, 0-2]
        [00000/00000/0]

    """

    while True:

        x = xAxis.read_u16()
        y = yAxis.read_u16()
        
        # 10 bytes of data with x,y
        data = "{:05}{:05}".format(x, y)

        print("X:{:05}, Y:{:05}".format(x, y))

        #transmitte(nrf,data)
        utime.sleep(0.1)

def utf8len(string):
    """Returns the size in bytles."""
    return len(string.encode('utf-8'))
    
def transmitte(nrf,data):
    nrf.stop_listening()
    try:
        nrf.send(struct.pack("i", data))
        time.sleep(.02)
    except OSError:
        print('message lost')
    nrf.start_listening()

def auto_ack(nrf):
    """Enables auto-ack on all pipes"""
    nrf.reg_write(0x01, 0b11111000)

def setup():
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



