#!/bin/ksh
# Shell script to convert bibtex libraries into html using bib2xhtml.

bibfiles="published conferences talks other"
dir="bib2xhtml_src"
options="-c -t -n Roberts -r -s plain"
for bibfile in $bibfiles
do
    cd $dir
    bib2xhtml ${options} ../${bibfile}.bib ../${bibfile}.html
    cd ..
done

