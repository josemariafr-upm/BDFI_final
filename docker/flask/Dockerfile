FROM python:3.10.12-alpine

RUN apk update
RUN apk add git \
    build-base \
    freetds-dev \
    g++ \
    gcc \
    tar \
    gfortran \
    gnupg \
    libffi-dev \
    libpng-dev \
    libsasl \
    openblas-dev \
    openssl-dev 

RUN mkdir /bdfi
WORKDIR /bdfi
RUN git clone https://github.com/Big-Data-ETSIT/practica_creativa.git

WORKDIR /bdfi/practica_creativa
RUN pip install -r requirements.txt

COPY predict_flask.py /bdfi/practica_creativa/resources/web/predict_flask.py

ENV PROJEC_HOME=/bdfi/practica_creativa

WORKDIR /bdfi/practica_creativa/resources/web

#RUN python3 predict-flask.py
