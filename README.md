## Tags

- TexLive-2015 (for Tex Live 2015)
- latest (for Tex Live 2016)

## Description

This docker was created for the sole purpose of generating PDF files through `texliveonfly`. 

`texliveonfly` will take care of downloading any other packages needed to compile the .tex file and generate the .pdf. To keep `texliveonfly` from downloading the packages every time you run this docker, I would suggest building a new Dockerfile for your LaTeX project with this as your base image. Then run `tlmgr` to install the rest of the packages needed for your project.

## Notes to remember

### Tex Live 2015
The container has the plain TeX environment as well as the base LaTeX packages, recommended fonts, and recommended latex packages.  

### Tex Live 2016 (latest)

The container has the plain TeX environment as well as the base LaTeX packages, recommended fonts, and recommended latex packages. It also has the packages for US/UK English, metapost, and XeTeX.

## Usage

To use the default `pdflatex` compiler:
```
docker run -v `pwd`:/source headgeekette/docker-latex [filename].tex
```

To use XeTeX:
```
docker run -v `pwd`:/source headgeekette/docker-latex --compiler=xetex [filename].tex
```
