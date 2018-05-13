# Flask JWT Auth

[![Build Status](https://travis-ci.org/IvanHreskiv/squareGameServerFlask.svg?branch=master)](https://travis-ci.org/IvanHreskiv/squareGameServerFlask)

## Want to use this project?

### Basics

1. Fork/Clone
1. Activate a virtualenv
1. Install the requirements

### Set Environment Variables

Update *project/server/config.py*, and then run:

```sh
$ export APP_SETTINGS="project.server.config.DevelopmentConfig"
```

or

```sh
$ export APP_SETTINGS="project.server.config.ProductionConfig"
```

Set a SECRET_KEY:

```sh
$ export SECRET_KEY="change_me"
```

### Run the Application

```sh
$ docker-compose build
```
```sh
$ docker-compose up
```

Access the application at the address [http://0.0.0.0/client](http://0.0.0.0/client)

### Testing

Without coverage:

```sh
$ docker-compose exec web python manage.py test
```

With coverage:

```sh
$ docker-compose exec web python manage.py cov
```

### Create Migration
 1. Add new model to project/server/models.py

```sh
$ python3 manage.py db migrate
```

```sh
$ python3 manage.py db upgrade
```
