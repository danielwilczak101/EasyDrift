from machine import Pin, SPI, ADC
from nrf24l01 import NRF24L01
import struct
import time
import utime
import math

led = Pin(25, Pin.OUT)                # LED
left = Pin(0, Pin.IN, Pin.PULL_DOWN)  # left button
right = Pin(1, Pin.IN, Pin.PULL_DOWN)  # right button
csn = Pin(15, mode=Pin.OUT, value=1)  # chip select not
ce  = Pin(14, mode=Pin.OUT, value=0)  # chip enable

xAxis = ADC(Pin(26))
yAxis = ADC(Pin(27))

# Addresses are in little-endian format. They correspond to big-endian
# 0xf0f0f0f0e1, 0xf0f0f0f0d2 - swap these on the other Pico!
pipes = (b"\xe1\xf0\xf0\xf0\xf0", b"\xd2\xf0\xf0\xf0\xf0")

def control(nrf):
    """Main logic behind how the cart will send radio control signals.
    
    How the logic should work:
        Each section will change one index in main array

        Example:
        More complex but greater control
        [x, y, throotle value, [Forward, Backward or middle]]
        [0 - 70000, 0-70000, 52000-0, 0-2]
        [00000/00000/00000/0]

        * Has to be that specific size
    """

    message = [00000,00000,00000,0]

    while True:

        x = xAxis.read_u16()
        y = yAxis.read_u16()
        
        mappedx = valmap(x, 280, 65000, -33000, 33000)
        mappedy = valmap(y, 280, 65000, -33000, 33000)
        throttle = math.sqrt(mappedx**2 + mappedy**2)
        throttle = throttle if throttle < 33000 else 33000
        
        #transmitte(nrf,9)
        
        print("X, %s Y: %s Throttle: %s" % (x, y, throttle))
        utime.sleep(0.1)

def valmap(value, istart, istop, ostart, ostop):
  return ostart + (ostop - ostart) * ((value - istart) / (istop - istart))

def setup():
    """Setup radio transiever to recieve commands and transmit verification."""
    nrf = NRF24L01(SPI(0), csn, ce, payload_size=8)
    nrf.open_tx_pipe(pipes[0])
    nrf.open_rx_pipe(1, pipes[1])
    nrf.start_listening()
    led.value(0)
    return nrf

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
    

nrf = setup()
auto_ack(nrf)
control(nrf)


