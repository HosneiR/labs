FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    wget \
    curl \
    gdebi-core \
    && rm -rf /var/lib/apt/lists/*

COPY fibonacci-software_1.0-1_amd64.deb /tmp/

RUN gdebi -n /tmp/fibonacci-software_1.0-1_amd64.deb

CMD ["./usr/bin/main", "10"]
