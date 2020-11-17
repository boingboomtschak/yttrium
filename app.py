import os
import flask

# yttrium starter Flask code

app = Flask(__name__)
app.secret_key = os.urandom(24)

@app.route('/')
def main():
    return "Hello, world!"

if __name__ == "__main__":
    print("Starting up yttrium server...")
    app.run()