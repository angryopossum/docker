from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello, this is a test application running behind Nginx and Varnish!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)

