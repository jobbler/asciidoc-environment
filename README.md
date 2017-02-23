
asciidoc-environment
====================


These files and scripts allow an easy way for me to use asciidoc.

In short, this sets up an environment that allows me to easily produce pdf files.

This sets up a command that allows me to edit an asciidoc file, while its being editted, a pdf viewer is opened and is updated as I write changes to the file. This is almost real-time (or as real-time as I need it).



There are two sets of files here.

Set 1: Contains files that use vim, scripts, and functions to automatically create a pdf to be viewed.
* Configure VIM syntax highlighting

* Configures a vim autocommand to call a script to generate a pdf everytime the file is saved.

* Includes the vad bash function. 
 * This function opens vim to edit the file and opens evince to view the pdf.

 * function automatically erases the generated html and pdf files to preent directory clutter.
Passing the -k option to the function prevents the deletion of the generated files.

Set 2: Uses incrond to watch a directory and automatically generate the pdf files for viewing.
* Configure VIM syntax highlighting

* All adoc files are created in a single directory.
 * incrond watches this directory and calls a script to generate a pdf everytime the file is changed.

* See the incron_setup directory for this configureation



The sytax highlighting is taken from Dag Wieers GitHub repository. The files from his repository are not included here, only links to it.

See the docs and incrond_setup directory for more information.


