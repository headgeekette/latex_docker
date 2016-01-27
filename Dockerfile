FROM ubuntu:latest
MAINTAINER Charo Nuguid <me@thegeekettespeaketh.com>

RUN apt-get install wget -y

RUN wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz && tar -xzf install-tl-unx.tar.gz 

COPY texlive.profile install-tl-*/

RUN cd install-tl-*/ && ./install-tl --profile=texlive.profile