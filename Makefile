MAIN_FILE=Main_magistr_sav
all: clean main.pdf

main.pdf :
	pdflatex $(MAIN_FILE).tex
	#bibtex8 -B $(MAIN_FILE).aux
	bibtex $(MAIN_FILE).aux
	pdflatex $(MAIN_FILE).tex

clean:
	find . -not -path "./.git/*" -a -not -path "./FIGs/*" -a \( -name \*.aux -o -name \*.bbl -o -name \*.blg -o -name \*.idx -o -name \*.ilg \
		-o -name \*.ind -o -name \*.log -o -name \*.pdf -o -name \*.synctex -o -name \*.toc \) -exec rm '{}' \;
