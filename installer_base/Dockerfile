FROM ubuntu:14.04

#Add necessary packages for add-apt-repository command
RUN \
  sudo apt-get update && \
  sudo apt-get --yes install software-properties-common python-software-properties

#Add repositories
RUN \
  sudo add-apt-repository ppa:webupd8team/java -y && \
  sudo apt-get update

#Intalling jdk 7 (Skip the license acceptance box)
RUN \
  echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections && \
  sudo apt-get --yes install unzip ftp oracle-java7-installer
