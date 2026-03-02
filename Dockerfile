FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    curl wget git nano vim \
    python3 python3-pip \
    ttyd \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 8080

CMD ["ttyd", "--port", "8080", "--writable", "--credential", "admin:admin123", "bash"]
