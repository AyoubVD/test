FROM ubuntu:latest

COPY mongo.sh run.sh
COPY bash.sh bash.sh
COPY mongo.py mongo.py
COPY scraper.py scraper.py
COPY sTOredis.py storetoredis.py
COPY redisTOmogo.py redisTOmogo.py

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y sudo
RUN apt-get install -y python3-pip 
RUN apt-get install -y python3
RUN DEBIAN_FRONTEIND="noninteractive" apt -y install tzdata

RUN chmod+x bash.sh

RUN pip3 install pandas
RUN pip3 install requests
RUN pip3 install bs4
RUN pip3 install pymongo
RUN pip3 install redis

RUN chmod +x mongo.sh
CMD ["./redisTOmogo.py","./redisTOmogo.py"] 
