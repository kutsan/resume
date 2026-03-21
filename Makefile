IMAGE = texlive/texlive:latest
SRC   = src/main.tex
DIST  = dist

ifndef CI
RUN = docker run --rm -v $(CURDIR):/workspace -w /workspace \
	--user $(shell id -u):$(shell id -g) $(IMAGE)
endif

ifdef BUILD_URL
PRETEX_FLAGS = -usepretex -pretex='\def\builddate{\today}\def\buildurl{$(BUILD_URL)}'
endif

.PHONY: all clean

all:
	@mkdir -p $(DIST)
	@$(RUN) latexmk -cd -f -xelatex -interaction=nonstopmode $(PRETEX_FLAGS) -output-directory=../$(DIST) $(SRC)

clean:
	@rm -rf $(DIST)
