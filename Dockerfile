FROM python:3-alpine

RUN mkdir /app

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r /app/requirements.txt && rm -f /app/requirements.txt

COPY src/*.py /app/

EXPOSE 5000

WORKDIR /app
CMD ["python", "app.py"]
