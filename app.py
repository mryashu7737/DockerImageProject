from flask import Flask
app = Flask(__name__)

@app.route("/info")
def test():
    return "Welcome to my Web Portal"

app.run(host='0.0.0.0')


