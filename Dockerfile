# ---- Create a SBT on Ubuntu Environment ----


FROM ubuntu:16.04
MAINTAINER Ryo Ota <nwtgck@gmail.com>


# Install JDK 8
RUN apt update
RUN apt install -y software-properties-common
RUN apt-add-repository ppa:openjdk-r/ppa
RUN apt update && apt install -y openjdk-8-jdk
RUN java -version

# Install sbt
RUN apt -y install apt-transport-https
RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
RUN apt update && apt install -y sbt
RUN sbt sbtVersion

# Clean
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Done!
