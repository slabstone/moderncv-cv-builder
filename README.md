# :page_facing_up: [moderncv](https://github.com/moderncv/moderncv) CV builder

Tired of guessing what packages are required to build your moderncv CV? You've come to the right place!

Build your CV with Docker and get PDF without fuss in three simple steps:

* clone this repo (_without_ submodules)
* put your CV source file somewhere in the repo dir
* run `make build SOURCE_FILENAME=<path-to-your-source-file>`

# Known Issues

moderncv [template](https://github.com/moderncv/moderncv/blob/master/template.tex) fails to build with error:

```
0.821 ! Undefined control sequence.
0.821 \Url Error ->\url used in a moving argument.
0.821
0.821 l.116 \makecvtitle
0.821
0.821 ?
0.821 ! Emergency stop.
0.821 \Url Error ->\url used in a moving argument.
0.821
0.821 l.116 \makecvtitle
0.821
0.821 !  ==> Fatal error occurred, no output PDF file produced!
```
