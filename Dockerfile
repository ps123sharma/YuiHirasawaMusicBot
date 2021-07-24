FROM debian:latest
FROM python:3.9.6-slim-buster
RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN git clone https://github.com/ps123sharma/YuiHirasawaMusicBot
WORKDIR https://github.com/TeamUltroid/Ultroid.git
RUN pip3 install -U -r requirements.txt
CMD python3 -m YuiHirasawaMusicBot
