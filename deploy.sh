#!/bin/bash
set -e

APP_NAME="lms-webserver"
IMAGE_NAME="lms-image"
PORT=8003

echo "--- 1. Building Image ---"
sudo docker build -t $IMAGE_NAME:latest -f Containerfile .

echo "--- 2. Cleaning Old Container ---"
sudo docker stop $APP_NAME || true
sudo docker rm $APP_NAME || true

echo "--- 3. Starting New Container ---"
sudo docker run -d --name $APP_NAME -p $PORT:80 $IMAGE_NAME:latest

echo "--- 4. Verification ---"
sudo docker ps -a | grep $APP_NAME
