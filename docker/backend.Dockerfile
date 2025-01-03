FROM python:3.9-slim

WORKDIR /app

COPY ./backend /app
COPY ./backend/requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["gunicorn", "myproject.wsgi:application", "--bind", "0.0.0.0:8000"]