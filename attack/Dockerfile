FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive
RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt-get clean
RUN apt-get update && apt-get install --assume-yes wget
WORKDIR /app
COPY attack.sh /app
CMD ["/bin/sh", "./attack.sh"]
