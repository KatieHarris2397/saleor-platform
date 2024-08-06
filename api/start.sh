#!/bin/bash

python3 manage.py migrate
python3 manage.py populatedb --createsuperuser
#DJANGO_SUPERUSER_PASSWORD=admin python3 manage.py createsuperuser --email=admin@admin.com --noinput

gunicorn --bind :8000 --workers 4 --worker-class saleor.asgi.gunicorn_worker.UvicornWorker saleor.asgi:application