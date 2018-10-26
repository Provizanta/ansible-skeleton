#!/bin/bash

sudo apt install -y python3
sudo apt install -y python3-pip
pip3 install virtualenv

virtualenv .venv
source .venv/bin/activate
pip install ansible
deactivate
