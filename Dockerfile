FROM python:3.14-slim
WORKDIR /app
COPY helloworld.py .
CMD [ "python", "helloworld.py"]
