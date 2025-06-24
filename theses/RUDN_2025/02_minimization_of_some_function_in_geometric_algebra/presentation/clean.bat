cmd /c latexmk -C
del /s  *.aux *.log *.bbl *.bcf *.blg *.toc *.pyg *.mintedcmd *.mintedmd5 *.out *.nav *.snm *.fdb_latexmk *.fls *.vrb *.xdv *.xml
del *.lua
REM del *.pdf
del /s /q .\_minted-main\*