from arduino import Arduino
import time
import threading

b = Arduino('/dev/tty.usbmodemfd121')
output_led = 13
input_pin = 1
training = True
max_threshold, min_threshold = 0, 0

def setup():
    #declare output pins as a list/tuple
    b.output([])


def loop():
    val = b.analogRead(input_pin)
    if val > 300:
    	b.setHigh(output_led)
    else:
    	b.setLow(output_led)
    print val
    #if val > max_threshold:
         #Left blink
        #print "left blink"
    #elif val < min_threshold:
         #Right blink
        #print "Right blink"
    #print "Reading: " + val

def train():
    global max_threshold, min_threshold
    val = b.analogRead(input_pin)
    #max_threshold = max(max_threshold, val)
    #min_threshold = min(min_threshold, val)
    print val
    time.sleep(.1)


setup()

def init(init_args):
    while True:
        # Training
        #if training:
            #for _ in xrange(1000):
                #train()
            #training = False
        loop()
        time.sleep(.001)

init("init")

b.close()
