import os
from flask import Flask
import utils.generator as g

# yttrium starter Flask code

app = Flask(__name__)
app.secret_key = os.urandom(24)

@app.route('/')
def main():
    return g.generate_page()

if __name__ == "__main__":
    print("Starting up yttrium server...")
    app.run()