#!/bin/bash
cd mongodb
docker build -t mongodb:1.0.0
cd ../catalogue
docker build -t catalogue:1.0.0
cd ../web
docker build -t web:1.0.0
