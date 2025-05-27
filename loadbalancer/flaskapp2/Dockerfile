FROM python:3.9-slim-buster
WORKDIR /app
COPY requirements.txt .
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install vim -y
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5001
CMD ["python", "app.py"]
