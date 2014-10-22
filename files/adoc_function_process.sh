#! /bin/bash

# This creates an html file and pdf file from an adoc (asciidoc) file.
# It accepts two options, p and hi, then a file name.
# These options remove the pdf and html respectively when exiting.
# These options are useful when using the vad function.

file=$1

filen=${file%.*}

(
asciidoc -o ${filen}.html ${file}

~/bin/wkhtmltox/bin/wkhtmltopdf \
  --header-line \
  --footer-center 'Page [page] of [topage]' \
  --footer-line \
  --footer-spacing 3 \
  ${filen}.html ${filen}.pdf
) > /tmp/adoc_process.out 2>&1


