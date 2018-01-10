FROM ubuntu:16.04

RUN apt-get clean \
  && rm -rf /var/lib/apt/lists/* \ 
  && apt-get update \
  && apt-get -y upgrade \
  && apt-get install -y ca-certificates wget curl git ffmpeg supervisor

COPY ./ffserver_hd.conf /ffserver_hd.conf
COPY ./ffserver_thermal.conf /ffserver_thermal.conf
COPY ./testvideo720paudio.mp4 /testvideo720paudio.mp4
COPY ./thermalvideo720paudio.mp4 /thermalvideo720paudio.mp4

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 554
EXPOSE 555
CMD ["/usr/bin/supervisord"]

