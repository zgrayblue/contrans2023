# syntax=docker/dockerfile:1

FROM python:3.11.4-bookworm

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

ENV secretpassword=whenyourhereyourefamily

WORKDIR /contrans2023

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root"]