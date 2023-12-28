FROM python:3.11.7-alpine

RUN apk update
RUN apk add git

RUN mkdir /bdfi
WORKDIR /bdfi
RUN git clone https://github.com/Big-Data-ETSIT/practica_creativa.git

WORKDIR /bdfi/practica_creativa
RUN pip install -r requirements.txt

ENV PROJEC_HOME=/bdfi/practica_creativa

WORKDIR /bdfi/practica_creativa/resources/web
RUN python3 predict-flask.py
