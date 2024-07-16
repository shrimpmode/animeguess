FROM python:3.10-alpine
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTHWRITEBYTECODE=1
WORKDIR /code
COPY requirements.txt /code/

RUN apk add --no-cache gcc musl-dev linux-headers 


RUN pip install --upgrade pip && \
  pip install -r requirements.txt

COPY . /code/

RUN chmod +x /code/entrypoint.sh

EXPOSE 8000


ENTRYPOINT ["/code/entrypoint.sh"]
