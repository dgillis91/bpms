FROM ubuntu

WORKDIR /app

COPY * /app

RUN apt-get update && \
    apt-get upgrade && \
    apt-get install --yes software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt-get install --yes python3.10 && \
    apt-get install --yes python3-pip

RUN pip3 install -r requirements.txt