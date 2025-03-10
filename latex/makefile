main: main.tex # preambule.tex
	latexmk -lualatex -bibtex -dvi- -ps- -shell-escape main.tex
	# xelatex -shell-escape main.tex

clean:
	-@rm -vf *.aux *.log *.bbl *.blg *.toc *.pyg *.mintedcmd *.mintedmd5 *.out *.bcf *.xml *.thm *.nav *.snm *.fdb_latexmk *.fls *.vrb *.xdv
	-@rm -vf ./_minted*/*
	-@rmdir _minted*
	-@rm -vf ./text/*.aux

backup:
	date +%d-%m-%Y-%H-%M-%S | xargs -i tar -zcvf ./{}.tar.gz *
