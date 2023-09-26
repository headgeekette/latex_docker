## Description

This docker was created for the sole purpose of generating PDF files through `texliveonfly`. 

`texliveonfly` will take care of downloading any other packages needed to compile the .tex file and generate the .pdf. To keep `texliveonfly` from downloading the packages every time you run this docker, I would suggest building a new Dockerfile for your LaTeX project with this as your base image. Then run `tlmgr` to install the rest of the packages needed for your project.

## Usage

To compile:
```
docker build --pull --rm -f "Dockerfile" -t pdflatex "."
```

To use the default `pdflatex` compiler:
```
docker run --rm -v `pwd`:/source pdflatex [filename].tex
```

To use XeTeX:
```
docker run --rm -v `pwd`:/source pdflatex --compiler=xetex [filename].tex
```
