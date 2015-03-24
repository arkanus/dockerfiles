# Dockerfile for android development environment
#
# Based on the docker image creted by ksoichiro
# https://github.com/ksoichiro/dockerfiles/tree/master/android

FROM ubuntu:14.04

MAINTAINER arkanus "arkanus@gmail.com"

RUN apt-get update -qq

# Dependencies to execute android
RUN apt-get install -y --no-install-recommends openjdk-7-jre-headless openjdk-7-jdk git
  
# Main Android SDK
RUN apt-get install -y --no-install-recommends wget
RUN cd /opt && wget -q http://dl.google.com/android/android-sdk_r24.1.2-linux.tgz
RUN cd /opt && tar xzf android-sdk_r24.1.2-linux.tgz
RUN cd /opt && rm -f android-sdk_r24.1.2-linux.tgz

# Other tools and resources of Android SDK
ENV ANDROID_HOME /opt/android-sdk-linux
ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools
RUN echo y | android update sdk --no-ui --force --filter \
platform-tool,\
tool,\
build-tools-22.0.1,\
android-17

# Cleaning
RUN apt-get clean
