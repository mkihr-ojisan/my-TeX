#!/usr/bin/env perl

$latex = 'uplatex %O -synctex=1 -interaction=nonstopmode %S';
$pdflatex = 'pdflatex %O -synctex=1 -interaction=nonstopmode %S';
$lualatex = 'lualatex %O -synctex=1 -interaction=nonstopmode %S';
$xelatex = 'xelatex %O -no-pdf -synctex=1 -shell-escape -interaction=nonstopmode %S';
$biber = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
$bibtex = 'upbibtex %O %B';
$makeindex = 'upmendex %O -o %D %S';
$dvipdf = 'dvipdfmx %O -o %D %S';
$dvips = 'dvips %O -z -f %S | convbkmk -u > %D';
$ps2pdf = 'ps2pdf %O %S %D';
$pdf_mode = 3;

# LaTeX
#$latex = 'platex -synctex=1 -halt-on-error -file-line-error %O %S';
#$max_repeat = 5;

# BibTeX
#$bibtex = 'pbibtex %O %S';
#$biber = 'biber --bblencoding=utf8 -u -U --output_safechars %O %S';

# index
#$makeindex = 'mendex %O -o %D %S';

# DVI / PDF
#$dvipdf = 'dvipdfmx %O -o %D %S';
#$pdf_mode = 3;

# preview
#$pvc_view_file_via_temporary = 0;
#if ($^O eq 'linux') {
#   $dvi_previewer = "xdg-open %S";
#    $pdf_previewer = "xdg-open %S";
#} elsif ($^O eq 'darwin') {
#    $dvi_previewer = "open %S";
#    $pdf_previewer = "open %S";
#} else {
#    $dvi_previewer = "start %S";
#    $pdf_previewer = "start %S";
#}

# clean up
#$clean_full_ext = "%R.synctex.gz"
