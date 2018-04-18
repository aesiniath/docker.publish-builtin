FROM localhost/afcowie/fedora:27

RUN dnf install -y \
	make \
	pandoc \
	inkscape

RUN dnf install -y \
	latexmk \
	texlive-collection-latex \
	texlive-collection-fontsrecommended \
	texlive-inconsolata \
	texlive-libertine \
	texlive-memoir \
	texlive-upquote \
	texlive-microtype
	
