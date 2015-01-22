### Latex makefile
# Author: Brett Ryan Terespolsky
TEX = latexmk

# List all the files that are used when producing the pdf
MAIN_FILE = main.tex
OUTFILE = GiveMeAName

FLAGS = -f -cd -pdflatex=lualatex -pdf -quiet -synctex=1 -outdir=Output -shell-escape
.PHONY : all clean help cont superclean view

# default: help

all: $(FILES)
	$(TEX) $(FLAGS) $(MAIN_FILE)
	mv ./Output/*.pdf ./$(OUTFILE).pdf

clean:
	@rm -rf ./Output

superclean:
	@rm -rf ./Output/*.* ./$(OUTFILE).pdf

cont:
	$(TEX) $(FLAGS) -pvc $(MAIN_FILE)

view:
	open ./$(OUTFILE).pdf

help:
	@echo ""
	@echo "make all|clean|superclean|cont|view|help"
	@echo ""
	@echo "all: Makes all the required files and opens the created pdf document."
	@echo ""
	@echo "clean: Cleans all regeneratable files (soft clean)."
	@echo ""
	@echo "superclean: Same as \"clean\" but removes pdf and some others."
	@echo ""
	@echo "cont: Continuously monitors the folder for any changes and builds the document in real time. Ctrl-C ends this mode."
	@echo ""
	@echo "view: Opens the created document for viewing"
	@echo ""
	@echo "help: Displays this very useful help information"
