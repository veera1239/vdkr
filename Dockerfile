FROM python:3.10.0

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD ["python3","manage.py","runserver","0.0.0.0:8000"]