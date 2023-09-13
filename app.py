import flask

app = flask.Flask(__name__)

@app.route("/")
def resume():
	return flask.send_file('Young_Drew_Resume.pdf')

@app.route("/robots.txt")
def robots():
	return flask.send_file("robots.txt")

app.run()
