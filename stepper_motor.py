import RPi.GPIO as GPIO
from time import sleep

#DEFINE PINS
DIR = 13	
STEP = 11
CW = 1
CCW = 0


GPIO.setmode(GPIO.BOARD)
GPIO.setup(DIR, GPIO.OUT)
GPIO.setup(STEP, GPIO.OUT)
GPIO.output(DIR, CW)

try:
	while True:
		

		sleep(1.0)
		GPIO.output(DIR,CW)
		for x in range(440):
			GPIO.output(STEP,GPIO.HIGH)
			sleep(.0010)
			GPIO.output(STEP,GPIO.LOW)
			sleep(.0010)

		sleep(1.0)
		GPIO.output(DIR,CCW)
		for x in range(440):
			GPIO.output(STEP,GPIO.HIGH)
			sleep(.0010)
			GPIO.output(STEP,GPIO.LOW)
			sleep(.0010)

except KeyboardInterrupt:
	print("cleanup")	
	GPIO.cleanup()

