from python: 3.8-slim-buster
run apt update -y && apt install awscli -y
workdir /app

copy ./app

run pip install -r requirements.txt
run pip install --update accelerate
run pip uninstall -y transformer accelerate
run pip install transformer accelerate

cmd["python3","app.py"]
