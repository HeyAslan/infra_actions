FROM python:3.7-alpine
RUN ls -a
COPY ./ /app
WORKDIR /app/infra_project/
RUN pip install -r /app/requirements.txt
CMD ["python3", "manage.py", "migrate"]
CMD ["python3", "manage.py", "runserver", "0:5000"]
