all: fixbib build
	
build:
	pdflatex main&&bibtex main&&pdflatex main&&pdflatex main

fixbib:
	biber --tool --output_encoding=ascii thesis.bib
	mv thesis_bibertool.bib thesis_ascii.bib
	sed -i 's/JOURNALTITLE/JOURNAL/g' thesis_ascii.bib
	sed -i 's/\\x{00a0}/ /g' thesis_ascii.bib
	sed -i 's/\\x{223c}/{\\textasciitilde}/g' thesis_ascii.bib
	sed -i 's/\\x{2264}/\$\\le\$/g' thesis_ascii.bib
	sed -i 's/\\x{00b5}/\$\\mu\$/g' thesis_ascii.bib
	sed -i 's/\\x{03b2}/\$\\beta\$/g' thesis_ascii.bib
	sed -i 's/\\x{03b1}/\$\\alpha\$/g' thesis_ascii.bib
	sed -i 's/\\x{0394}/\$\\Delta\$/g' thesis_ascii.bib
	sed -i 's/\\x{03bc}/\$\\mu\$/g' thesis_ascii.bib
	sed -i 's/\\x{03b3}/\$\\gamma\$/g' thesis_ascii.bib
	sed -i 's/\\x{00b1}/\$\\pm\$/g' thesis_ascii.bib
	sed -i 's/\\x{03a8}/\$\\Psi\$/g' thesis_ascii.bib
	sed -i 's/\\x{03ba}/\$\\kappa\$/g' thesis_ascii.bib
	sed -i 's/\\x{03c8}/\$\\psi\$/g' thesis_ascii.bib
