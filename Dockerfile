FROM localhost/afcowie/fedora:29

RUN dnf install -y \
	librsvg2-tools \
 && dnf clean all

RUN dnf install -y \
	latexmk \
	texlive-collection-xetex \
	texlive-memoir \
	texlive-upquote \
	texlive-microtype \
	texlive-euenc \
	texlive-tabto-ltx \
 && dnf clean all

RUN dnf install -y \
	linux-libertine-fonts \
	texlive-tex-gyre \
	levien-inconsolata-fonts \
 && dnf clean all

WORKDIR /mnt

