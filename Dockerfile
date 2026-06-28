FROM lscr.io/linuxserver/code-server:latest

USER root

RUN apt update && apt install -y \
git \
curl \
wget \
zip \
unzip \
nano \
vim \
python3 \
python3-pip \
openjdk-21-jdk \
maven \
nodejs \
npm \
rclone

RUN mkdir /workspace

WORKDIR /workspace

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
