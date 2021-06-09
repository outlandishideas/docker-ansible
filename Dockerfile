FROM python:3.8.7-buster

RUN apt-get update
RUN apt-get install bash git openssh-client -y
RUN pip3 install ansible==2.9.10
RUN pip3 install boto3 boto