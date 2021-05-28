FROM ubuntu
RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    python3.8 python3-pip python3.8-dev && \
    apt-get -y install git
ENV PYTHONUNBUFFERED=1
ENV SHELL=/bin/bash
WORKDIR /Users/bharathsubramanyam/djangoApp1
RUN pip install --upgrade pip 
COPY ./requirements.txt /Users/bharathsubramanyam/djangoApp1
RUN pip install -r requirements.txt
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
