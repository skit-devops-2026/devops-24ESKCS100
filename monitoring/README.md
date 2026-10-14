# Monitoring Stack (M6)

This directory contains the configuration files and dashboard definitions for the **LifeQuest** monitoring infrastructure using **Prometheus** and **Grafana**.

---

## 📊 Overview

- **Prometheus** scrapes application and infrastructure metrics at regular intervals.
- **Grafana** visualizes real-time metrics, system health, and request latency via pre-configured dashboards.
- Metrics are exported via `GET /metrics` and health status is available at `GET /health`.

---

## 📁 Files

- `prometheus.yml`: Scrape configuration targeting `lifequest-web` (port 80) and Prometheus (port 9090).
- `dashboard.json`: Complete Grafana dashboard definition with panels for:
  - **Service Status (Live)** (Health check / Uptime)
  - **HTTP Request Throughput** (Requests/second by status)
  - **Response Latency** (p95 and p99 percentiles in ms)
  - **System Resource Utilization** (CPU & Memory)

---

## 🚀 How to Run Locally

Start the full stack (App + Prometheus + Grafana) with Docker Compose:

```bash
docker compose up -d
```

### Access Points:
| Service | URL | Default Credentials |
|---|---|---|
| **LifeQuest Web App** | [http://localhost](http://localhost) | N/A |
| **Health Check** | [http://localhost/health](http://localhost/health) | N/A |
| **Metrics Endpoint** | [http://localhost/metrics](http://localhost/metrics) | N/A |
| **Prometheus UI** | [http://localhost:9090](http://localhost:9090) | N/A |
| **Grafana Dashboard** | [http://localhost:3001](http://localhost:3001) | `admin` / `admin` |
