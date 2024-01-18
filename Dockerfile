FROM python
ENV PYTHONUNBUFFERED 1
WORKDIR /app/
COPY . .
RUN python -m pip install  -r requirements.txt
RUN python manage.py makemigrations
RUN python manage.py migrate
