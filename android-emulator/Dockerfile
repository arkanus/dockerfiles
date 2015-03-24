# Dockerfile for android emulator image
#
# Based on the docker image creted by ksoichiro
# https://github.com/ksoichiro/dockerfiles/tree/master/android-emulator

FROM arkanus/android

MAINTAINER arkanus "arkanus@gmail.com"

# Specific android stuff for this particular build environment and emulator
RUN echo y | android update sdk --no-ui --force -a --filter \
build-tools-22.0.1,\
android-21,\
addon-google_apis-google-21,\
sys-img-armeabi-v7a-addon-google_apis-google-21

# Set up and run emulator
RUN echo no | android create avd --force -n test --device "Nexus 5" -t "Google Inc.:Google APIs:21" -g google_apis --abi google_apis/armeabi-v7a
# Avoid emulator assumption of HOME as '/'.
ENV HOME /root
ADD wait-for-emulator /usr/local/bin/
ADD start-emulator /usr/local/bin/

# Create a project using gradle-2.2.1 to init the cache and projects don't have to download stuff
# RUN mkdir -p /opt/tmp && android create project -g -v 1.0.0 -a MainActivity -k com.example.example -t android-22 -p /opt/tmp
WORKDIR /opt
ADD example-project.tgz .

RUN cd /opt/example && ./gradlew tasks
RUN rm -rf /opt/example

VOLUME /workspace
WORKDIR /workspace
