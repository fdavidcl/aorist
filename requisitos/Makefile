PDF=$(addsuffix .pdf, $(basename $(wildcard *.md)))

default: $(PDF)

%.pdf: %.md template.latex
	pandoc $< -o $@ --template template.latex --latex-engine xelatex
