FROM ubuntu:18.04

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
		fonts-lyx \
		python3 \
		intltool \
		jing \
		ghostscript \
		libbatik-java \
		libavalon-framework-java \
	&& gem install --no-ri --no-rdoc asciidoctor -v 1.5.8 \
	&& gem install --no-ri --no-rdoc coderay -v 1.1.2 \
	&& gem install --no-ri --no-rdoc asciidoctor-pdf -v 1.5.0.alpha16 \
	&& gem install --no-ri --no-rdoc asciidoctor-mathematical -v 0.2.2 \
	&& gem uninstall --ignore-dependencies ttfunk \
	&& gem install --no-ri --no-rdoc ttfunk -v 1.5.1

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/

WORKDIR /documents
VOLUME /documents

CMD ["/bin/bash"]


