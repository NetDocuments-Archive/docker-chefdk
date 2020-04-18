FROM  ubuntu:xenial-20200212
MAINTAINER David McMaster <dmcmaster@netdocuments.com>

RUN apt-get update -qq; apt-get install curl git locales ca-certificates -y -q
ADD DigiCert_High_Assurance_EV_Root_CA.crt /usr/local/share/ca-certificates
ADD DigiCert_SHA2_High_Assurance_Server_CA.crt /usr/local/share/ca-certificates
RUN update-ca-certificates

RUN curl -L https://omnitruck.chef.io/install.sh | bash -s -- -v 3.13.1 -P chefdk

# http://jaredmarkell.com/docker-and-locales/
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
