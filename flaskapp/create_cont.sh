docker build -t flasktest:v1 .

docker container run -d --name flasktest -p 5050:5000 flasktest:v1 
