FROM alpine:latest
MAINTAINER Aziz Meknassi - Web Moods Ltd

ENV PYTHONUNBUFFERED 1
RUN apk add python3 py3-pip
RUN pip install --upgrade pip
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user