FROM python:3.9.0

WORKDIR /home/

RUN echo "asdfas"

RUN git clone https://github.com/jam2208/GII_Project.git

WORKDIR /home/GII_Project/

RUN echo "SECRET_KEY=django-insecure-3oed%-k3%lpjjkal1d8e7zri&iai-&@fb48jm57i4wbrllle&8" > .env

RUN pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]