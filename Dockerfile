FROM ubuntu:latest
MAINTAINER Ivan Hreskiv <ivanhreskiv@gmail.com>

EXPOSE 5000 
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential libpq-dev git

COPY *requirements.txt /opt/app/src/
RUN pip install -r /opt/app/src/requirements.txt

COPY . /opt/app/src/
WORKDIR /opt/app/src
CMD python manage.py create_db && \
    python manage.py db init && \
    python manage.py runserver -h 0.0.0.0 -p 5000
