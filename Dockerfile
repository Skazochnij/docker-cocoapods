FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y ruby-full

RUN gem install cocoapods

RUN adduser cocoapods
USER cocoapods
RUN pod setup
