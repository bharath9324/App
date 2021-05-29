FROM ubuntu
RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    python3.8 python3-pip python3.8-dev && \
    apt-get -y install git && \
    apt-get -y install curl
ENV PYTHONUNBUFFERED=1
ENV SHELL=/bin/bash
WORKDIR /Users/bharathsubramanyam/Development
RUN pip install --upgrade pip 
COPY ./requirements.txt /Users/bharathsubramanyam/Development
RUN pip install -r requirements.txt
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
