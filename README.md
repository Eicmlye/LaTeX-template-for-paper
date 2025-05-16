# $\LaTeX$ Template for Papers

This repository is a $\LaTeX$ template for academic research papers. It contains

1. Title page design.
2. Page style management.
3. Chapter files management.
4. Usages of common math symbols.
5. Usages of figures and tables.
6. Reference management.

## Table of Contents

- [Install](#install)
- [Basic Usages](#basic-usages)
  - [How to get the PDF file?](#how-to-get-the-pdf-file)
  - [How to edit the document?](#how-to-edit-the-document)
  - [Image Insertation](#image-insertation)
  - [Source Code Insertation](#source-code-insertation)
- [Maintainer](#maintainer)
- [License](#license)

## Install

This repository uses $\LaTeX$ and requires only the standard packages. To install $\LaTeX$, check out the installation process at [$\LaTeX$ project](https://www.latex-project.org/).

## Basic Usages

### How to get the PDF file?

Compile `paper.tex` in `XeLaTeX` mode in TeXworks editor, [paper.pdf](LaTeX_template/paper.pdf) will be the result. Compile twice for correctly displayed table of contents and cross-references.

### How to edit the document?

All the document files are in `pgs/` directory. You can add new chapter/section by the following steps:

1. Copy and paste the file pgs/protected/[newChpt.tex](LaTeX_template/pgs/protected/newChpt.tex) to `pgs/` directory.
2. Rename the copy to, e.g. , `chpt2.tex`.
3. Insert the file to [paper.tex](LaTeX_template/paper.tex) in the document section.
   ```latex
   % -------- Enter here --------
       %% Copy&Paste pgs/protected/newChpt.tex to add new chapters.

   \include{pgs/chpt1.tex}
   \include{pgs/chpt2.tex} % This line is inserted.

   % -------- End --------
   ```

### Image Insertation

All the images should be placed in `img/` directory. `.pdf` format images are prefered.

### Source Code Insertation

All the source code files to be attached in the paper should be placed in `attachment/` directory.

## Maintainer

[@Eicmlye](https://github.com/Eicmlye)

## License

[MIT](LICENSE) © Eric Monlye
