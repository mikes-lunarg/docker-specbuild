FROM ubuntu:16.04

MAINTAINER Michael Worcester <michael.worcester@imgtec.com>


RUN apt-get update \
	&& apt-get install -y \
		git \
		ruby \
		ruby-dev \
		cmake \
		build-essential \
		bison \
		flex \
		libffi-dev \
		libxml2-dev \
		libgdk-pixbuf2.0-dev \
		libcairo2-dev \
		libpango1.0-dev \
		ttf-lyx \
	&& gem install --no-ri --no-rdoc asciidoctor \
	&& gem install --no-ri --no-rdoc coderay \
	&& gem install --no-ri --no-rdoc --pre asciidoctor-pdf \
	&& MATHEMATICAL_SKIP_STRDUP=1 gem install --no-ri --no-rdoc asciidoctor-mathematical

WORKDIR /documents
VOLUME /documents

CMD ["/bin/bash"]


