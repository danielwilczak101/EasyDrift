from machine import Pin, SPI, ADC
from nrf24l01 import NRF24L01
import struct
import time
import utime

led = Pin(25, Pin.OUT)                # LED
leftbtn = Pin(0, Pin.IN, Pin.PULL_DOWN)  # left button
throttle = Pin(1, Pin.IN, Pin.PULL_DOWN)  # right button
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

    power, handle, stepper = 0, 0, ""

    while True:


    
        xValue = xAxis.read_u16()
        yValue = yAxis.read_u16()

        if leftbtn.value():
            if power != "off":
                power = "off"
                transmitte(nrf,1)

        if throttle.value():
            if power != "Mo power!":
                power = "Mo power!"
                transmitte(nrf,2)
            
        if xValue > 600 and xValue < 60000:
            xStatus = "middle"
            if (stepper == 1):
                transmitte(nrf,0)
                stepper = 0
            
        elif xValue <= 600:
            xStatus = "left"
            transmitte(nrf,3)
            stepper = 1
            
        elif xValue >= 60000:
            xStatus = "right"
            transmitte(nrf,4)
            stepper = 1

        if yValue > 600 and yValue < 60000:
            yStatus = "middle"
            if (handle == 1):
                transmitte(nrf,7)
                handle = 0
            
        elif yValue <= 600:
            yStatus = "forward"
            transmitte(nrf,8)
            handle = 1
            
        elif yValue >= 60000:
            yStatus = "backward"
            transmitte(nrf,9)
            handle = 1
        
        print("X: " + xStatus + ", Y: " + yStatus + " -- button " + power + " -- Movement")
        utime.sleep(0.1)


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

