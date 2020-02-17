all: master.pdf

clean: master.pdf
	rm master.pdf

master.pdf: *.tex */*.tex */*.lua images-print/*.pdf images-print/*.png
	lualatex master.tex -interaction=nonstopmode && lualatex -interaction=nonstopmode master.tex

publish: master.pdf
	scp master.pdf 1blu-rootserver:/var/www/html/fossgis/booklet20/
