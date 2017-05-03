# ---- Create a SBT on Ubuntu Environment ----


FROM nwtgck/java:8
MAINTAINER Ryo Ota <nwtgck@gmail.com>


# ==== Start Install SBT ====

RUN apt -y install apt-transport-https
RUN echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
RUN apt update -y
RUN apt install -y sbt
RUN sbt sbtVersion

# ==== End Install SBT ====


# Done!
