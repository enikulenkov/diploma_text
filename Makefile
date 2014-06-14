MAIN_FILE=Main_magistr_sav
all: clean main.pdf

main.pdf :
	pdflatex $(MAIN_FILE).tex
	#bibtex8 -B $(MAIN_FILE).aux
	biber $(MAIN_FILE)
	pdflatex $(MAIN_FILE).tex

clean:
	find . -not -path "./.git/*" -a -not -path "./FIGs/*" -a \( -name \*.aux -o -name \*.bbl -o -name \*.blg -o -name \*.idx -o -name \*.ilg \
		-o -name \*.ind -o -name \*.log -o -name \*.synctex -o -name \*.toc \) -exec rm '{}' \;
	rm -f $(MAIN_FILE).pdf
