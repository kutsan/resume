SRC = src/main.tex
DIST = dist
PDF = $(DIST)/resume.pdf

ifdef BUILD_URL
PRETEX_FLAGS = -usepretex -pretex='\def\builddate{\today}\def\buildurl{$(BUILD_URL)}'
endif

.PHONY: all clean watch

all: $(PDF)

$(PDF): src/*.tex src/*/*.tex
	@mkdir -p $(DIST)
	@latexmk -cd -silent -xelatex -interaction=nonstopmode $(PRETEX_FLAGS) -output-directory=../$(DIST) $(SRC)

clean:
	@rm -rf $(DIST)

watch:
	@mkdir -p $(DIST)
	@latexmk -cd -pvc -silent -xelatex -interaction=nonstopmode -output-directory=../$(DIST) $(SRC)
