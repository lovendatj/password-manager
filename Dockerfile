# Get base Image
FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
    software-properties-common
RUN apt-get update && apt-get install -y \
    git \
    python3.8 \
    python3-pip

ARG repository=https://github.com/lovendatj/password-manager.git

# RUN git clone $repository && cd /password-manager && \ 
#         python3 -m pip install -r requirements.txt

# CMD cd /password-manager ; \
#     python3 test.py