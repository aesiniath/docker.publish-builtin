FROM localhost/afcowie/debian:stretch

RUN apt-get install \
	librsvg2-bin

RUN apt-get install \
	latexmk \
	texlive-xetex \
	texlive-latex-recommended \
	texlive-latex-extra

RUN apt-get install \
	texlive-fonts-recommended \
	texlive-fonts-extra

WORKDIR /mnt

