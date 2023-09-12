FROM python:3.11-alpine

ADD requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

FROM python:3.11
RUN pip install django djangorestframework tzdata
RUN pip install django gunicorn psycopg2
ADD . /app
WORKDIR /app
EXPOSE 8000
ENTRYPOINT [ "python" ]
CMD [ "manage.py", "runserver", "0.0.0.0:8000" ]