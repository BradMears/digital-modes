FROM ubuntu:latest

ENV TZ 'America/Denver'
RUN echo $TZ > /etc/timezone && \
  apt-get update && apt-get upgrade -y && \
  apt-get install -y tzdata && \
  rm /etc/localtime && \
  ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
  dpkg-reconfigure -f noninteractive tzdata && \
  apt-get clean

RUN apt-get install -y alsa-base alsa-utils
RUN apt-get install -y wsjtx js8call fldigi flrig

CMD ["/bin/bash"]
