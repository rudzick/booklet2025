all: master.pdf

clean: master.pdf
	rm master.pdf

master.pdf: *.tex */*.tex */*.lua images-print/*.pdf images-print/*.png sponsorentexte/*.tex
	lualatex master.tex -interaction=nonstopmode && lualatex -interaction=nonstopmode master.tex

publish: master.pdf
	rsync -avu master.pdf mymapnik:/var/www/html
