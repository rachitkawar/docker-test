FROM python:3.8-slim

WORKDIR /app
COPY requirements.txt ./

RUN apt-get update && apt-get -y install libpq-dev gcc
RUN pip3 install --no-cache-dir -r requirements.txt
RUN pip3 install pydantic[dotenv]

COPY . .

EXPOSE 8088