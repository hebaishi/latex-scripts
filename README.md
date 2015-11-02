# latex-scripts
A collection of scripts for easy integration of
data into a latex document.

* ```latex_images.pl```: Perl script that takes all files from STDIN and generates latex code to insert the images into a document. To use, do the following:

```bash
ls *.pdf | latex_images.pl
```
Required packages: ```graphicx``` and ```subcaption```.
