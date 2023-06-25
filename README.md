# MQTT To TimescaleDB

Ingesting time series data into TimescaleDB using MQTT and EMQX | MQTT Timescale Integration

## Introduction

This tutorial will show you how to use MQTT to ingest time series data into TimescaleDB. We will be using the [EMQX](https://www.emqx.io/) MQTT broker to publish and subscribe to messages. We will also be using the [TimescaleDB](https://www.timescale.com/) database to store the data.

This is a SaaS service for IIoT energy consumption analysis.
Each factory has a production line with multiple devices per line. The factory needs to monitor the energy consumption of each device in real time, and analyze the energy consumption of each production line and the entire factory in a certain period of time.

This real-time monitoring and analysis can help factory managers make data-driven decisions, such as identifying equipment failures or abnormal energy consumption, adjusting production schedules to minimize energy consumption, and monitoring and evaluating the effectiveness of energy management measures. To improve energy efficiency and reduce production costs.

![EMQX IIoT Energy Monitoring Example](./image/energy-overview.png)

## Architecture

![MQTT to TimescaleDB](./image/mqtt-to-timescaledb.jpg)

| Name      | Version | Description                                                                      |
| --------- | ------- | -------------------------------------------------------------------------------- |
| [EMQX Enterprise](https://www.emqx.com/en/products/emqx)      | 5.0.3+  | MQTT broker used for message exchange between MQTT clients and the TimescaleDB. |
| [MQTTX CLI](https://mqttx.app/cli) | 1.9.3+  | Command-line tool used to generate simulated data for testing.        |
| [TimescaleDB](https://www.timescale.com/)     | latest-pg12+  | IIoT data storage and management, as well as providing time aggregation and analysis capabilities for Grafana.      |
| [EMQX Exporter](https://github.com/emqx/emqx-exporter)      | 0.1 | Prometheus exporter for EMQX |
| [Prometheus](https://prometheus.io/)   | v2.44.0  | Open-source systems monitoring and alerting toolkit.       |
| [Grafana](https://grafana.com/)   | 9.5.1+  | Visualization platform utilized to display and analyze the collected data.       |

## How to use

1. Init the submodule to get the EMQX Exporter  (Optional):

  ```bash
  git submodule init
  git submodule update
  ```

2. Please make sure you have installed the [docker](https://www.docker.com/), and then running the following commands to start the demo:

  ```bash
  docker-compose up -d
  ```

  > You can quickly init submodule and start the demo by using the `make` command as well.

3. Running the following commands to see the message from MQTTX:

  ```bash
  docker logs -f mqttx
  ```

4. If you want to view the energy data and EMQX Metrics in Grafana dashboard, you can open <http://localhost:3000> in your browser, and login with `admin:public`

## License

[Apache License 2.0](./LICENSE)
