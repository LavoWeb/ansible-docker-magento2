#!/bin/sh
# Correct API bugs
sudo apt-get upgrade -y docker-engine
# Force Docker start
sudo systemctl unmask docker.service
sudo systemctl unmask docker.socket
sudo systemctl start docker.service
