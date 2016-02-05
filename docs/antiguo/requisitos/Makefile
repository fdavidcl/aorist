PDF=$(addprefix pdf/, $(addsuffix .pdf, $(basename $(wildcard *.md))))

default: $(PDF)

pdf/%.pdf: %.md template.latex
	pandoc $< -o $@ --template template.latex --latex-engine xelatex
