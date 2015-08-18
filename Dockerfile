FROM debian:jessie

RUN apt-get update -y && apt-get install -y \
  libc6 libc6-dev libglib2.0-0 libzip-dev\
  libjpeg62 libjpeg62-turbo-dev \
  zlib1g zlib1g-dev \
  wget build-essential autoconf automake libtool git \
  libavformat-dev libavcodec-dev libavutil-dev libav-tools libswscale-dev \
  mutt ssmtp x264

RUN cd ~ \
  && git clone https://github.com/Mr-Dave/motion \
  && cd motion \
  && ./configure \
  && make \
  && make install

EXPOSE 8080
EXPOSE 8081

#RUN cd /tmp \
#  && wget https://launchpad.net/ffmpeg/pre-0.5/0.4.8/+download/ffmpeg-0.4.8.tar.gz \
#  && tar -zxvf ffmpeg-0.4.8.tar.gz \
#  && cd ffmpeg-0.4.8 \
#  && ./configure \
#  && make \
#  &&  
  
