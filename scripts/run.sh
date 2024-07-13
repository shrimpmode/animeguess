#!/bin/sh
#
set -e

# python manage.py collectstatic --noinput
python manage.py migrate

uwsgi --http :8000 --module server.wsgi
