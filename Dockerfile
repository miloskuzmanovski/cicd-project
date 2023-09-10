FROM python:3.11

ADD requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

FROM python:3.11
COPY . /app
RUN pip install django djangorestframework tzdata
RUN pip install gunicorn psycopg2
WORKDIR /app
EXPOSE 5000