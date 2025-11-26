FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    curl \
    wget \
    vim \
    nano \
    tree

WORKDIR /app

COPY run.sh /app/run.sh

RUN chmod +x /app/run.sh

CMD ["bash","run.sh"]
