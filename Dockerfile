FROM ubuntu:18.04
RUN apt-get update \
&& DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
python-django python-django-common git ca-certificates
RUN mkdir -p /usr/src
RUN cd /usr/src/ && git clone -v https://github.com/superhuman54/django_docker.git
WORKDIR /usr/src/django_docker
CMD python manage.py runserver 0.0.0.0:8000

