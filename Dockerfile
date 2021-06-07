FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install python3 python3-pip git openssh-client -y && \
    python3 -m pip install --user ansible==2.8.5 boto3 boto