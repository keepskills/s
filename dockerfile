#==============================================================================
#  DOCKERFILE
#==============================================================================

FROM ubuntu:latest

RUN apt update && apt install -y hugo
RUN apt clean && rm -rf /var/lib/apt/lists/* 2>/dev/null

COPY . /opt/landingpage

WORKDIR /opt/landingpage

EXPOSE 1313

CMD [ "hugo", "--cleanDestinationDir"]
CMD ["hugo", "server", "--bind", "0.0.0.0", "--port", "1313", "--baseURL", "http://localhost:1313", "--appendPort=false", "--disableLiveReload"]
