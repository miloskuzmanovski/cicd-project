FROM python:3.11
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

FROM python:3.11
WORKDIR /code
COPY ./app /code/app
EXPOSE 8000
ENTRYPOINT ["python", "manage.py"]
CMD  ["runserver", "0.0.0.0:8000"]
