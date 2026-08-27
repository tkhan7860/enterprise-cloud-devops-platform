from flask import Flask, jsonify
import os
import socket

app = Flask(__name__)


@app.route("/")
def home():
    return "Enterprise Cloud DevOps Platform\n"


@app.route("/health")
def health():
    return jsonify({
        "status": "healthy",
        "application": "enterprise-app"
    })


@app.route("/ready")
def ready():
    return jsonify({
        "status": "ready",
        "application": "enterprise-app"
    })


@app.route("/info")
def info():
    return jsonify({
        "application": "enterprise-app",
        "hostname": socket.gethostname(),
        "environment": os.getenv("ENVIRONMENT", "development"),
        "version": os.getenv("APP_VERSION", "1.0.0")
    })


if __name__ == "__main__":
    app.run(
        host="0.0.0.0",
        port=int(os.getenv("PORT", "8080"))
    )
