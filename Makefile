setup:
	python3 -m venv ~/.6190-Cloud-Computing-Project2

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	hadolint Dockerfile 
	pylint --disable=R,C,W1203 app.py

all: install lint test