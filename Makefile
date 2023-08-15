SOURCE_FILENAME = moderncv-cv/cv.tex

.PHONY: build

build:
	@docker build --build-arg filename=$(SOURCE_FILENAME) --output . .
