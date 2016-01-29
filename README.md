This docker was created for the sole purpose of generating PDF files using `pdftex`.

The docker contains the plain TeX environment as well as the base LaTeX packages.  If you would like to add more packages, you should be able to do so by using this as your base image and RUNning `/usr/local/texlive/2015/bin/x86_64-linux/tlmgr` to add additional packages as you need it.

**USAGE**

    docker run -v `pwd`:/source headgeekette/docker-latex [filename].tex
