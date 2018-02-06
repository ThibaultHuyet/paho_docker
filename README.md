# Paho in Docker

This project is merely to demonstrate how to use Paho mqtt within a docker container. My use case is only to publish from inside a docker container so I keep it at that only.

## Building
docker build -t paho .

## Running
docker run -p 1883 paho