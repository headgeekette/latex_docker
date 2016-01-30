This docker was created for the sole purpose of generating PDF files through `texliveonfly`.

The docker contains the plain TeX environment as well as the base LaTeX packages, recommended fonts, and recommended latex packages.  `texliveonfly` will take care of donwloading any other packages needed to compile the .tex file and generate the .pdf. To keep `texliveonfly` from downloading the packages every time you run this docker, I would suggest building a new Dockerfile for your LaTeX project with this as your base image. Then run `tlmgr` to install the rest of the packages needed for your project.

**USAGE**

    docker run -v `pwd`:/source headgeekette/docker-latex [filename].tex
