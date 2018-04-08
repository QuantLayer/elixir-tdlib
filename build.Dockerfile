# Set the base image to latest LTS release
FROM ubuntu:latest
MAINTAINER Name faizaan@quantlayer.com

FROM elixir:1.6
RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y vim

## Install git ##
RUN apt-get install -y git

# Configure Git to use HTTPS
RUN git config --global url.https://github.com/.insteadOf git://github.com/
RUN git config --global user.name "Faizaan Shamsi"
RUN git config --global user.email "faizaan@quantlayer.com"

# Install TDLib deps

# C++14 compatible compiler (Clang 3.4+, GCC 4.9+, MSVC 19.0+ (Visual Studio 2015+), Intel C++ Compiler 17+)
RUN apt-get install -y gcc g++
# OpenSSL
RUN apt-get install -y libssl-dev
# zlib
RUN apt-get install -y zlib1g-dev
# gperf
RUN apt-get install -y gperf
# CMake (3.0.2+, build only)
RUN apt-get install -y cmake

RUN mix local.hex --force && mix local.rebar --force

RUN apt-get -y install build-essential
RUN apt-get -y install erlang-dev
RUN apt-get -y upgrade make

RUN cd ~ && mkdir elixir-tdlib && cd elixir-tdlib && git init && git pull https://<YOUR GH PERSONAL TOKEN>@github.com/QuantLayer/elixir-tdlib.git
RUN cd ~/elixir-tdlib && make -f Makefile extract build import
