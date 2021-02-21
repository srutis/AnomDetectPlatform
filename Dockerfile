#FROM ubuntu:20.04
#ENV DEBIAN_FRONTEND noninteractive

FROM python:3.8-slim
LABEL maintainer="srutishivakumar@gmail.com"
SHELL [ "bash", "-c"]
RUN mkdir src 
WORKDIR /src

RUN pip install --upgrade pip && pip install jupyter 

CMD [ "jupyter", "notebook", "--port=9999", "--allow-root", "--no-browser", "--ip=0.0.0.0"]
