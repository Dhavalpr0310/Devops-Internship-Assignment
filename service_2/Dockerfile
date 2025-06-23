FROM python:3.10-alpine

WORKDIR /app

COPY app.py .

RUN pip install flask

EXPOSE 8002

CMD ["python", "app.py"]
