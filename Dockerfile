FROM base/archlinux
MAINTAINER Charo Nuguid <me@thegeekettespeaketh.com>

RUN pacman --noconfirm -Sy archlinux-keyring && pacman -Syuq --noconfirm && pacman --noconfirm -S texlive-most 

