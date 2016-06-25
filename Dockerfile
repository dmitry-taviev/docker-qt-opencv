FROM 944590742144.dkr.ecr.eu-west-1.amazonaws.com/apply/smart-qt
MAINTAINER Rihards Grichkus "rihards.grichkus@applyit.lv"

# Install dependencies (mostly codecs)
RUN apt-get update && \
    apt-get install -y \
            libavcodec54 \
            libavformat54 \
            libavutil52 \
            libswscale2 \ 
            libva-dev \
            libvorbis-dev \
            x264 \
            libx264-dev \
            libopus-dev \
            libtheora-dev \
            libmp3lame-dev \
            libvdpau-dev \
            libxcb-shm0-dev \
            libxcb1-dev \
            libxcb-xfixes0-dev \
            libsdl1.2-dev \
            libfontconfig1-dev \
            libharfbuzz-dev \
            libenca-dev \
            libtiff4-dev \
            libjpeg-dev \
            libjasper-dev \
            libdc1394-22-dev \
            libxine-dev \ 
            libgstreamer0.10-dev \
            libgstreamer-plugins-base0.10-dev \
            libv4l-dev \
            libtbb-dev \
            libopencore-amrnb-dev \
            libopencore-amrwb-dev \
            libxvidcore-dev \
            v4l-utils \
            libxslt1-dev \
            libgl1-mesa-dev \
            libgtk2.0-0 \
            libfreetype6-dev

# Copy opencv header and source files
COPY opencv/lib /usr/lib/
COPY opencv/include /usr/include/opencv/
COPY opencv2 /usr/local/include/opencv2/
