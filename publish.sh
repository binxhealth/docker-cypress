#!/bin/bash

if [[ $1 == '' ]]; then
  echo 💥 You need to enter a version number
  exit 1
fi

docker build -t binxhealth/cypress:latest .
docker tag binxhealth/cypress:latest binxhealth/cypress:$1
docker push binxhealth/cypress:latest
docker push binxhealth/cypress:$1
