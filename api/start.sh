#!/bin/bash

python3 manage.py migrate
python3 manage.py populatedb
python3 manage.py createsuperuser --noinput