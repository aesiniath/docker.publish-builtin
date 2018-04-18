#!/bin/bash

set -e
set -x

dnf install -y \
	make \
	pandoc \
	inkscape

dnf install -y \
	latexmk \
	texlive-collection-latex \
	texlive-collection-fontsrecommended \
	texlive-inconsolata \
	texlive-libertine \
	texlive-memoir \
	texlive-upquote \
	texlive-microtype
	

