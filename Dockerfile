FROM python:3.7-alpine

WORKDIR "/ace-qa-automation/tests"

RUN pip install -r requirements.txt

RUN mkdir -m777 -p /data/test-reports