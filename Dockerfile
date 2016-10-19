FROM ubuntu:latest

MAINTAINER test@test.com

# Install Node...
RUN apt-get update
RUN apt-get -y install nodejs
RUN apt-get -y install npm

# Copy app to /src
COPY . /src


EXPOSE 8080

CMD cd /src && nodejs ./server.js


