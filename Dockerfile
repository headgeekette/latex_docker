FROM ubuntu:23.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
   && apt-get install -y \
      texlive \
      texlive-latex-extra \
      texlive-extra-utils \
      texlive-xetex \
      texlive-luatex \
   && apt-get clean \
   && rm -rf /var/lib/apt/lists/*

WORKDIR /source

ENTRYPOINT ["texliveonfly"]
