FROM localhost/afcowie/fedora:28

RUN dnf install -y \
	make \
	pandoc \
	librsvg2-tools \
 && dnf clean all

RUN dnf install -y \
	latexmk \
	texlive-collection-xetex \
	texlive-memoir \
	texlive-upquote \
	texlive-microtype \
	texlive-euenc \
 && dnf clean all

RUN dnf install -y \
	linux-libertine-fonts \
	texlive-tex-gyre \
	levien-inconsolata-fonts \
 && dnf clean all

WORKDIR /mnt

