FROM python:3.7-alpine
COPY ./ /app
WORKDIR /app/infra_project/
RUN pip install -r /app/requirements.txt
CMD python manage.py migrate
CMD python manage.py runserver 4999
