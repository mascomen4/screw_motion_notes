cmd /c latexmk -C
del /s  *.aux *.log *.bbl *.blg *.toc *.pyg *.mintedcmd *.mintedmd5 *.out *.xml
REM del *.pdf
del /s *fdb_latexmk *.fls
del /s /q .\_minted-main\*