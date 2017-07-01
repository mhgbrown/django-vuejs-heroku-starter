web: python ./manage collectstatic && gunicorn backend.wsgi --log-file -
worker: REMAP_SIGTERM=SIGQUIT celery -A backend worker -l info
