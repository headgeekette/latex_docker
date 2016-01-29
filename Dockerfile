FROM ubuntu:latest
MAINTAINER Charo Nuguid <me@thegeekettespeaketh.com>

RUN apt-get install wget -y && wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz && tar -xzf install-tl-unx.tar.gz

RUN mkdir -p /profiles/

COPY texlive.profile /profiles/

RUN cd install-tl-*/ && ./install-tl --profile=/profiles/texlive.profile

RUN mkdir -p /source
WORKDIR /source

ENTRYPOINT ["pdflatex"]
