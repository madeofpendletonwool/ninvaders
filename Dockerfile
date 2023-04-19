FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    ninvaders \
  && rm -rf /var/lib/apt/lists/*

CMD tail -f /dev/null
