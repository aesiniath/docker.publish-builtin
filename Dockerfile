FROM localhost/afcowie/fedora:28

RUN dnf install -y \
	make \
	pandoc \
	librsvg2-tools \
 && dnf clean all

RUN dnf install -y \
	latexmk \
	texlive-collection-latex \
	texlive-collection-fontsrecommended \
	texlive-inconsolata \
	texlive-libertine \
	texlive-memoir \
	texlive-upquote \
	texlive-microtype \
 && dnf clean all

WORKDIR /mnt

