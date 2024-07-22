FROM python:3.10-alpine

RUN mkdir /code
RUN mkdir /code/staticfiles

WORKDIR /code

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt /code/

RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . /code/

RUN chmod +x /code/entrypoint.sh

CMD ["/code/entrypoint.sh"]
