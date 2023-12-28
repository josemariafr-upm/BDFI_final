#!/bin/bash

/opt/bitnami/kafka/bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic flight_delay_classification_request

/opt/bitnami/kafka/bin/kafka-topics.sh --bootstrap-server localhost:9092 --list
