FROM  ubuntu:xenial-20161121
MAINTAINER Spencer Owen <sowen@netdocuments.com>

RUN apt-get update -qq; apt-get install curl git -y -q

RUN curl -L https://www.opscode.com/chef/install.sh | bash -s -- -P chefdk

# http://jaredmarkell.com/docker-and-locales/
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8 
