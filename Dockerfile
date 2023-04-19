FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    ninvaders \
    wget \
    ca-certificates \
  && rm -rf /var/lib/apt/lists/*

# Download and install ttyd
RUN wget https://github.com/tsl0922/ttyd/releases/download/1.6.3/ttyd.x86_64 -O /usr/local/bin/ttyd && \
    chmod +x /usr/local/bin/ttyd

# Set the CMD to start ttyd with nInvaders
CMD ["/usr/local/bin/ttyd", "-p", "7681", "/usr/games/nInvaders"]
