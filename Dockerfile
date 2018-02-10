FROM python:3.6

ENV PYTHONUNBUFFERED 1


RUN pip install -r requirements.txt

CMD "python extra-fields/manage.py runserver 0.0.0.0:8000"
