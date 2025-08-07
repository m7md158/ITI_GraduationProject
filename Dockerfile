#  setup server

# 1 : start docker kernal + python

FROM python:3.12.11-slim-bullseye

# 2 : ENV :show logs

ENV PYTHONUNBUFFERED=1

# 3 : update kernal + install dep

RUN apt-get update && apt-get  -y install gcc libpq-dev 

# 4 : create project folder : kernal

WORKDIR /app

# 5 : Copy requirements.txt to kernal

COPY requirements.txt /app/

# 6 : Install requirements.txt

RUN pip install --upgrade pip && pip install -r requirements.txt

# 7 : Copy project code --> docker

COPY . /app/