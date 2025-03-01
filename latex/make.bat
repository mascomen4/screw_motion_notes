REM cmd /c xelatex.exe -shell-escape main.tex
REM cmd /c xelatex.exe -shell-escape main.tex
REM cmd /c bibtexu.exe main.aux

cmd /c latexmk -lualatex -pdflua -shell-escape main.tex
