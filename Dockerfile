# Get base Image
FROM ubuntu:latest
RUN apt-get update \
    && apt-get install -y \
        python3

ARG repository=https://github.com/lovendatj/password-manager.git

RUN git clone $repository && \
    cd password-manager && \
    python3 -m pip install -r requirements.txt && \
    python3 manage.py makemigrations && \
    python3 manage.py migrate && \
    python3 manage.py runserver