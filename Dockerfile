FROM fedora:latest

RUN dnf update; \
	dnf -y upgrade; \
	dnf -y groupinstall 'Development Tools'; \
	dnf -y install \
		meson \
		clang \
        libcurl-devel \
        json-c-devel \
		; \
	dnf clean all;
