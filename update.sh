#!/usr/bin/env sh
result=${PWD##*/}
docker build -t rakovets/"${result}":latest .
docker-compose up -d