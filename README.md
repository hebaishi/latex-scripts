# latex-scripts
A collection of scripts for easy integration of
data into a latex document.

* ```latex_images.pl```: Perl script that takes all files from STDIN and generates latex code to insert the images into a document. Usage:

```bash
ls *.pdf | latex_images.pl
```
Required packages: ```graphicx``` and ```subcaption```.

* ```tab2latex.pl```: Perl script to convert tab-delimited file to latex tabular format. Usage:

```bash
cat tab_file.txt | tab2latex.pl
```
Required packages: None.
