from bottle import route, run, template, get, view
from Queue import Queue
import threading
from arduino import Arduino
import time


b = Arduino('/dev/tty.usbmodemfd121')
b.output([])
input_pin = 1
max_threshold = 0
min_threshold = 0

for y in range(100):
    x = int(b.analogRead(input_pin))
    print x
    max_threshold = max([max_threshold, x])
    min_threshold = min([min_threshold, x])

print "+++++++++++++++++++++++"
print max_threshold
print min_threshold
print "+++++++++++++++++++++++"



@route("/")
@view("main_template")
def index(name="Michel"):
    return dict()

@get("/graph")
def graph():
    x = int(b.analogRead(input_pin))
    print x
    if x > max_threshold or x < min_threshold:
        return {"blink" : True}
    else:
        return {"blink" : False}

run(host="localhost", port="3000")

