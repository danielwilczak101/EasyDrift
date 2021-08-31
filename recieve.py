from machine import Pin, SPI, PWM
import struct

from nrf24l01 import NRF24L01

handle_forward = Pin(17, Pin.OUT)
handle_backward = Pin(16, Pin.OUT)

led = Pin(25, Pin.OUT)                # LED
btn = Pin(28, Pin.IN, Pin.PULL_DOWN)  # button press
csn = Pin(15, mode=Pin.OUT, value=1)  # chip select not
ce  = Pin(14, mode=Pin.OUT, value=0)  # chip enable
pwm = PWM(Pin(28)) # Throttle pin.

# Addresses are in little-endian format. They correspond to big-endian
# 0xf0f0f0f0e1, 0xf0f0f0f0d2 - swap these on the other Pico!
pipes = (b"\xd2\xf0\xf0\xf0\xf0", b"\xe1\xf0\xf0\xf0\xf0")

handle_forward.value(1)
handle_backward.value(1)

def setup():
    nrf = NRF24L01(SPI(0), csn, ce, payload_size=8)
    
    nrf.open_tx_pipe(pipes[0])
    nrf.open_rx_pipe(1, pipes[1])
    nrf.start_listening()

    led.value(0)
    return nrf

def demo(nrf):
    state = 0 
    while True:
        if state != btn.value():
            state = btn.value()
            led.value(state)
            
            print("tx", state)
            nrf.stop_listening()
            try:
                nrf.send(struct.pack("i", state))
            except OSError:
                print('message lost')
            nrf.start_listening()
            
        if nrf.any():
            buf = nrf.recv()
            got = struct.unpack("i", buf)[0]
            print("rx", got)
            if (got == 1):
                handle_forward.value(0)
                led.value(1)
                #handle_backward.value(0)
            elif(got == 2):
                pwm.freq(1000)

                pwm.duty_u16(50000)
            else:
                handle_forward.value(1)
                led.value(0)

def auto_ack(nrf):
    nrf.reg_write(0x01, 0b11111000)  # enable auto-ack on all pipes
    

nrf = setup()
auto_ack(nrf)
demo(nrf)

