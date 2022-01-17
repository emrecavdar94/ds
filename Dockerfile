# API Dockerfile

FROM python:3.6-alpine
RUN mkdir /app
COPY . /app
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip3 install -r requirements.txt
CMD [ "python", "main.py"]
