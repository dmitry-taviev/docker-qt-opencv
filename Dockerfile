FROM 944590742144.dkr.ecr.eu-west-1.amazonaws.com/apply/smart-ffmpeg3
MAINTAINER Dmitry Taviev "dmitry.taviev@applyit.lv"

RUN apt-get update && apt-get install -y libtiff5-dev \
    libjasper-dev

COPY include /usr/local/include
COPY lib /usr/local/lib
