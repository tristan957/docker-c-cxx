FROM fedora:latest

RUN dnf update; \
	dnf -y upgrade; \
	dnf -y groupinstall 'Development Tools'; \
	dnf -y install \
		meson \
		clang \
		; \
	dnf clean all;
