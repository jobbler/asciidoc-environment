## 0.3.1 (4-14-2015)

Changed:
  - vad function in the 
  - updated 

Removed:
  - incrond configuration



## 0.3.0 (10-22-2014)

Created incron_setup directory and moved original files into it. This directory contains the files to use incrond to autogenerate the pdf files.

Additions:
  - Added adoc_function_process.sh. This processes the .adoc to html and pdf.
  - Changed vad function to remove the generated .html and .pdf files when vim is exited. Added the -k option to override this behavior.
  - Add autocmd to the asciidoc.vim file to execute adoc_function_process.sh whenever a write is performed when editing a .adoc file.


