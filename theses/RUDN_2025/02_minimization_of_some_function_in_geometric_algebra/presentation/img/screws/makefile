all: moment01.pdf moment02.pdf moment03.pdf moment04.pdf moment05.pdf moment06.pdf moment07.pdf plucker.pdf

moment01.pdf: moment01.asy
	asy -noV $<

moment02.pdf: moment02.asy
	asy -noV $<

moment03.pdf: moment03.asy
	asy -noV $<

moment04.pdf: moment04.asy
	asy -noV $<

moment05.pdf: moment05.asy
	asy -noV $<

moment06.pdf: moment06.asy
	asy -noV $<

moment07.pdf: moment07.asy
	asy -noV $<

plucker.pdf: plucker.asy
	asy -noV $<

.PHONY: clean
.PHONY: cleanall

clean:
	-@rm -vf *.tex *.aux *.log *.ps

cleanall: clean
	-@rm -vf *.pdf