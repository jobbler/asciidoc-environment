#! /bin/bash

# This script is intended to be called from the incron daemon.
# It turns an asciidoc file into an html file and a pdf file.
# The basic direcotry structure is:
# 	${updir}
#
# adoc	html	pdf
#

dir=$1
file=$2

updir=$( dirname ${dir} )
filen=${file%.*}

htmldir=${updir}/html
pdfdir=${updir}/pdf

(
asciidoc -o ${htmldir}/${filen}.html ${dir}/${file}

~/bin/wkhtmltox/bin/wkhtmltopdf ${htmldir}/${filen}.html ${pdfdir}/${filen}.pdf
) > /tmp/adoc_process.out 2>&1

