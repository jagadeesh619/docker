#!/bin/bash
cd mongodb
docker build -t mongodb:1.0.0 .
cd ../catalogue
docker build -t catalogue:1.0.0 .
cd ../web
docker build -t web:1.0.0 .
cd ../user
docker build -t user:1.0.0 .
cd ../cart
docker build -t cart:1.0.0 .
cd ../mysql
docker build -t mysql:1.0.0 .
cd ../shipping
docker build -t shipping:1.0.0 .
cd ../payment
docker build -t payment:1.0.0 .