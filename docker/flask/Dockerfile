FROM python:3.11.7-slim-bookworm

RUN apt update
RUN apt install git -y

RUN mkdir /bdfi
WORKDIR /bdfi
RUN git clone https://github.com/josemariafr-upm/BDFI_final.git

WORKDIR /bdfi/BDFI_final
RUN pip install -r requirements.txt

RUN rm -rf BDFI_final/