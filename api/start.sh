#!/bin/bash

python3 manage.py migrate
python3 manage.py populatedb
python3 manage.py createsuperuser --email kitbear23@gmail.com --noinput

gunicorn --bind :8000 --workers 4 --worker-class saleor.asgi.gunicorn_worker.UvicornWorker saleor.asgi:application