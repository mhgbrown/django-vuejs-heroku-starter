# Django Vue.js Heroku Starter

A Django-backed Vue.js frontend ready for deployment on Heroku based on [this starter code](https://github.com/rokups/hello-vue-django). Also contains Celery, hot-reload, eslint!

## Prerequisites

Make sure you have the following installed on your system

* Node.js
* Python 3.6.1
* PostgreSQL
* RabbitMQ
* Redis

## Set up the environment

* Create the database
    * `$ psql`
    * `username=# CREATE USER django_vuejs_heroku_starter_user WITH PASSWORD 'password';`
    * `username=# CREATE DATABASE django_vuejs_heroku_starter;`
    * `username=# GRANT ALL PRIVILEGES ON DATABASE django_vuejs_heroku_starter to django_vuejs_heroku_starter_user;`
    * `username=# \q`
* Create a Python virtualenv
    * pyenv virtualenv 3.6.1 django-vuejs-heroku-starter-3.6.1

## Development

These steps will install all required dependencies including development ones, run migrations and start dev server.

```bash
make dev
make migrate
make run
```

## Deployment

These steps will install productio dependencies and build vuejs application to `static/dist` folder.

```bash
make prod
make build
```
