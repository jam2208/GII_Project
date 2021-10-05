FROM python:3.9.0

WORKDIR /home/

RUN echo "asfsdasfa"

RUN git clone https://github.com/jam2208/GII_Project.git

WORKDIR /home/GII_Project/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py collectstatic --noinput --settings=GII_Project1.settings.deploy && python manage.py migrate --settings=GII_Project1.settings.deploy && gunicorn --env DJANGO_SETTINGS_MODULE=GII_Project1.settings.deploy GII_Project1.wsgi --bind 0.0.0.0:8000"]