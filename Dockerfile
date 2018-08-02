FROM  ubuntu:xenial-20180726
MAINTAINER Spencer Owen <sowen@netdocuments.com>

RUN apt-get update -qq; apt-get install curl git locales -y -q

RUN curl -L https://omnitruck.chef.io/install.sh | bash -s -- -v 1.6.11 -P chefdk

# http://jaredmarkell.com/docker-and-locales/
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8 
