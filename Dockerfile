FROM continuumio/anaconda3

RUN apt update && apt upgrade -y && \
    apt install -y libasound2 portaudio19-dev
RUN conda install -y pyaudio && \
    conda install jupyter -y --quiet && \
    mkdir -p /opt/notebooks 
RUN pip3 install sounddevice

CMD ["/bin/bash"]
