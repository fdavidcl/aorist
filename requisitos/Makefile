PDF=$(addsuffix .pdf, $(basename $(wildcard *.md)))

default: $(PDF)

%.pdf: %.md
	pandoc $< -o $@ --latex-engine xelatex
