FROM armv7/armhf-ubuntu:latest

RUN apt-get update
RUN apt-get install -y python python-dev python-pip
RUN cd /srv
ADD requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
