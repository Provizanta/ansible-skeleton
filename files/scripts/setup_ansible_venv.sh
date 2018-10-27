#!/usr/bin/env bash

virtualenv .venv
source .ansible/bin/activate
pip install ansible
deactivate
