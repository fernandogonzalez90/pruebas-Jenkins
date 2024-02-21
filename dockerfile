FROM jenkins/jenkins:latest

USER root

RUN apt-get update &&  apt-get install -y \
    nodejs \
    npm

USER jenkins

VOLUME /var/jenkins_home