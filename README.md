# MQTT To TimescaleDB

Ingesting time series data into TimescaleDB using MQTT and EMQX | MQTT Timescale Integration

## How to use

Please make sure you have installed the docker, and just run the `make` command to start all of the containers.

## Demo Scenario

This is a SaaS service for IIoT energy consumption analysis.
Each factory has a production line with multiple devices per line. The factory needs to monitor the energy consumption of each device in real time, and analyze the energy consumption of each production line and the entire factory in a certain period of time.

This real-time monitoring and analysis can help factory managers make data-driven decisions, such as identifying equipment failures or abnormal energy consumption, adjusting production schedules to minimize energy consumption, and monitoring and evaluating the effectiveness of energy management measures. To improve energy efficiency and reduce production costs.

<!-- ![EMQX IIoT Energy Monitoring Example](./image/energy-architecture.png) -->

## Introduction

You can use EMQX [data integration](https://www.emqx.com/en/solutions/mqtt-data-integration) or write your own application to achieve this task. This project provides the corresponding sample code.

This tutorial will show you how to use MQTT to ingest time series data into TimescaleDB. We will be using the [EMQX](https://www.emqx.io/) MQTT broker to publish and subscribe to messages. We will also be using the [TimescaleDB](https://www.timescale.com/) database to store the data.

![EMQX IIoT Energy Monitoring Example](./image/energy-overview.png)

## Prerequisites

| Name      | Version | Description                                                                      |
| --------- | ------- | -------------------------------------------------------------------------------- |
| [EMQX Enterprise](https://www.emqx.com/en/products/emqx)      | 5.0.3+  | MQTT broker used for message exchange between MQTT clients and the TimescaleDB. |
| [EMQX Exporter](https://github.com/emqx/emqx-exporter)      | 0.1 | Prometheus exporter for EMQX |
| [MQTTX CLI](https://mqttx.app/cli) | 1.9.3+  | Command-line tool used to generate simulated data for testing.        |
| [TimescaleDB](https://www.timescale.com/)     | latest-pg12+  | IIoT data storage and management, as well as providing time aggregation and analysis capabilities for Grafana.      |
| [Prometheus](https://prometheus.io/)   | v2.44.0  | Open-source systems monitoring and alerting toolkit.       |
| [Grafana](https://grafana.com/)   | 9.5.1+  | Visualization platform utilized to display and analyze the collected data.       |
