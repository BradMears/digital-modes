#!/bin/bash
# Invoke the container that starts the jupyter server

export PULSE_SERVER=unix:/run/user/1000/pulse/native
docker-compose run --rm jupyter
exit

docker run -i -t -p 8888:8888 jupyter:latest /bin/bash -c "\
    jupyter notebook \
    --notebook-dir=/opt/notebooks --ip='*' --port=8888 \
    --no-browser --allow-root"


#docker run -i -t -p 8888:8888 jupyter:latest /bin/bash -c "\
#    conda install jupyter -y --quiet && \
#    mkdir -p /opt/notebooks && \
#    jupyter notebook \
#    --notebook-dir=/opt/notebooks --ip='*' --port=8888 \
#    --no-browser --allow-root"


# Or should I do the following instead?
#docker-compose up -d 
