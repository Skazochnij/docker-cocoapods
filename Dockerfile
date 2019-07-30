FROM ubuntu:18.04

# Install ruby and git as prerequisites
RUN apt-get update
RUN apt-get install -y git ruby-full

# Install cocoapods
RUN gem install cocoapods

# You cannot run CocoaPods as root 
RUN adduser cocoapods
USER cocoapods

# Setup pod
RUN pod setup