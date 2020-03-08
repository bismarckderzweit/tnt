A Thesis Template for the HCI Group
===================

A classicthesis flavor for the HCI group at Leibniz Universität Hannover.

###Usage

A thesis must always include the following components:
 * title page
 * declaration ("Eidesstattliche Erklärung"), always in German!
 * table of contents
 * bibliography
 
All other special pages are optional. Regarding syntax and general usage of this template, refer to the example chapters. **Use margin notes (`\graffito{}`) only where absolutely neccessary!** They are more book-styled and won't fit well in a typical thesis.

###Configuration

Basically, all you need to edit is in `classicthesis-config.tex`. Section 2 of that file is probably most important, there you enter the thesis title and all the names shown on the title page. Code listings can be configured in section 5, timestamping of pages can be deactivated in section 1. If you want colored references and hyperlinks, toggle the comment in section 6, subsection "Hyperreferences".

If you need to change the language, you will have to touch several lines. In section 3, input encoding and babel language are set. In file `ClassicThesis.tex`, languages are set in the `\documentclass` command as well as in the `\selectlanguage` command right after `\begin{document}`. Be careful not to remove German language, because the declaration at the end of the document needs to be in German. Also, the abstract section consists of a German and an English version.

Besides the special abstract page and the colophon in the back, there are some other special pages included as templates, e.g. a foreword or a dedication. Usually, you won't need them in you thesis, so feel free to ignore (or even remove) the respective files and commented lines in `ClassicThesis.tex`.

Obviously, the placement of the special pages can be changed by ordering their respective commands. Document structure is defined in `ClassicThesis.tex` and split into front matter, main matter, back matter and additional pages.

###Credits

This document is based on classicthesis version 4.1 . You can find the classicthesis project on [Google Code](https://code.google.com/p/classicthesis/). The original autor collects postcards from classicthesis users, you can find his address in the example .tex files.

The title page was inspired by the classicthesis fork of the Institute of Communications Technology at Leibniz Universität Hannover. The Welfenschloss picture was taken from their template which you can find at the [IKT website](http://www.ikt.uni-hannover.de/studium_templates.html?&L=1).

The font colors (LUHblue and LUHgreen in the .sty file) were taken from the [Leibniz Universität corporate design guidelines](http://www.uni-hannover.de/imperia/md/content/webredaktion/intern/universitaet/corporate/luh_guidelines.pdf). The colors are defined in CMYK space so they should look appropriate when printed.
