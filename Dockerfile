FROM thomasweise/docker-texlive-full:2.0 as builder
ARG workdir=/usr/src/moderncv
ARG filename

WORKDIR ${workdir}
COPY ${filename} .

RUN latexmk -pdf $(basename ${filename})

FROM scratch AS exporter
ARG workdir=/usr/src/moderncv

COPY --from=builder ${workdir}/*.pdf .
