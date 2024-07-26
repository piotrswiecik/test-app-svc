#!/bin/bash

python manage.py migrate
gunicorn --workers 4 --threads 4 --timeout 60 --bind=0.0.0.0:8000 demo.wsgi
