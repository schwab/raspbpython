FROM armv7/armhf-ubuntu:latest

RUN apt-get update
RUN apt-get install -y python python-dev python-pip libffi-dev libxml2-dev libxslt1-dev libjpeg8-dev zlib1g-dev libssl-dev

RUN pip install --upgrade pip
RUN pip install libsass
RUN pip install --upgrade setuptools

RUN cd /srv
ADD requirements.txt ./requirements.txt

RUN pip install -r requirements.txt
