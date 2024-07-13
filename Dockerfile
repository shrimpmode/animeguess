# syntax=docker/dockerfile:1
FROM python:3.12.4-alpine3.20
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/


RUN apk add --no-cache gcc musl-dev linux-headers
RUN pip install -r requirements.txt

COPY . /code/

RUN chmod +x ./scripts/run.sh
RUN ["./scripts/run.sh"]
