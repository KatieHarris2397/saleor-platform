#!/bin/bash

python3 manage.py migrate
python3 manage.py populatedb
python3 manage.py createsuperuser --noinput --username admin --email setivol276@almaxen.com --password admin