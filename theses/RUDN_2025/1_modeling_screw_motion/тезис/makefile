all: main

main: main.tex
	latexmk -lualatex -bibtex -dvi- -ps- -shell-escape main.tex

clean:
	-@rm -vf *.aux *.log *.bbl *.blg *.toc *.pyg *.mintedcmd *.mintedmd5 *.out *.nav *.snm *.fdb_latexmk *.fls *.vrb *.xdv *.gz
	-@rm -vf ./_minted*/*
	-@rmdir _minted*
	-@rm -vf ./text/*.aux *.run.xml *.bcf

backup:
	date +%d-%m-%Y-%H-%M-%S | xargs -i tar -zcvf ./{}.tar.gz *
