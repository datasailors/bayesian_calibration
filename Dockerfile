FROM tensorflow/tensorflow:latest-py3

MAINTAINER Nonato de Paula, Fabio <Fabio.Nonato@bhge.com>

ARG http_proxy
ARG https_proxy
ARG no_proxy

ADD Container-Root /

RUN export http_proxy=$http_proxy; export https_proxy=$https_proxy; export no_proxy=$no_proxy; /setup.sh; rm -f /setup.sh

RUN pip3 install --user --upgrade tensorflow-probability

WORKDIR /

CMD ./startup.sh
