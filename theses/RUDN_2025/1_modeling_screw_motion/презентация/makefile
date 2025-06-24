all: main

main: main.tex preambule.tex
	latexmk -lualatex -dvi- -ps- -shell-escape main.tex

.PHONY: clean

clean:
	-@rm -vf *.aux *.log *.bbl *.bcf *.blg *.toc *.pyg *.mintedcmd *.mintedmd5 *.out *.nav *.snm *.fdb_latexmk *.fls *.vrb *.xdv *.lua *.xml *.fdb_latexmk *.pre
	-@rm -vf ./_minted*/*
	-@rm -vf *.asy
	-@rmdir _minted*
	-@rm -vf ./text/*/*.aux
	latexmk -C

split: split.py main.pdf
	python split.py

backup:
	date +%d-%m-%Y-%H-%M-%S | xargs -i tar -zcvf {}.tar.gz *
