FROM kalilinux/kali-rolling
ARG DEBIAN_FRONTEND=noninteractive
ENV TERM xterm-256color
RUN apt-get update && apt upgrade -y && apt-get install sudo -y

RUN apt-get install -y\
    python3 \
    python3-dev \
    python3-pip \
    mpv \
    git \
    xfce4 \
    xfce4-goodies \
    tightvncserver
    
RUN sudo vncserver -geometry 800x600 -depth 24 -SecurityTypes None
RUN git clone https://github.com/JayPatel1314/Telegram_VC_Bot
