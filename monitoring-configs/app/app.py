import time
import random
import logging
from flask import Flask, jsonify, request
from prometheus_client import Counter, Histogram, generate_latest, CONTENT_TYPE_LATEST

app = Flask(__name__)

# --- PROMETHEUS METRICS ---
REQUEST_COUNT = Counter(
    'vpro_app_requests_total',
    'Total number of HTTP requests',
    ['method', 'endpoint', 'http_status']
)

REQUEST_LATENCY = Histogram(
    'vpro_app_latency_seconds',
    'Time spent processing request',
    ['endpoint']
)

# --- LOGGING ---
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s [%(levelname)s] %(name)s: %(message)s'
)
logger = logging.getLogger("vpro-service")

@app.route('/')
def home():
    REQUEST_COUNT.labels(method='GET', endpoint='/', http_status=200).inc()
    logger.info("Landing page accessed")
    return "<h1>vProfile Monitoring App</h1><p>Status: Running</p>"

@app.route('/login', methods=['GET'])
def login():
    start_time = time.time()
    time.sleep(random.uniform(0.1, 0.4))

    if random.random() < 0.2:
        REQUEST_COUNT.labels(method='GET', endpoint='/login', http_status=500).inc()
        logger.error("Login failed: Database connection timeout")
        return jsonify({"status": "error", "message": "Internal Server Error"}), 500

    REQUEST_COUNT.labels(method='GET', endpoint='/login', http_status=200).inc()
    logger.info("User 'admin' successfully authenticated")

    duration = time.time() - start_time
    REQUEST_LATENCY.labels(endpoint='/login').observe(duration)
    return jsonify({"status": "success", "user": "admin"})

@app.route('/metrics')
def metrics():
    return generate_latest(), 200, {'Content-Type': CONTENT_TYPE_LATEST}

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)

