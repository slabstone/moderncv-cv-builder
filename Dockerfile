FROM thomasweise/docker-texlive-full:2.0 as builder
WORKDIR /usr/src/moderncv
COPY moderncv-cv/cv.tex ./

RUN latexmk -pdf cv.tex

FROM scratch AS exporter
COPY --from=builder /usr/src/moderncv/cv.pdf .
