from bottle import route, run, template
import test

@route("/")
def index(name="Michel"):
    return name + " was here"

@get("/graph")
def graph():
    return "hi"

run(host="localhost", port="3000")
