FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

ENV LANGUAGE=en_US.UTF-8
ENV LC_CTYPE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install apt-utils locales -y
RUN locale-gen en_US en_US.UTF-8
RUN update-locale LANG=en_US.UTF-8

RUN apt-get install -y --no-install-recommends \
        bc \
        build-essential \
        bzr \
        ca-certificates \
        cmake \
        cpio \
        cvs \
        file \
        git \
        libncurses5-dev \
        python3 \
        rsync \
        unzip \
        wget \
	time \
	sudo \
	pip \
        && \
    apt-get -y autoremove && \
    apt-get -y clean

RUN apt-get install -y --no-install-recommends \
        libpango1.0-0 \
	libpangoft2-1.0-0 \
        && \
        apt-get -y autoremove && \
        apt-get -y clean

#RUN apt-get intall -y --no-install-recommends \
#	argagg-dev \
#	catch2 \
#	libfmt-dev \
#	nlohmann-json-dev \
#	\
#	\
#	&& \
#        apt-get -y autoremove && \
#        apt-get -y clean

#RUN mkdir ~/camera-debug-facility
COPY ./vendors/Makefile .
#RUN cat Makefile
RUN make python

RUN useradd -ms /bin/bash user && \
    chown -R user:user /home/user

ENV DEBIAN_FRONTEND newt
RUN id
RUN pwd

USER user
WORKDIR /home/user

RUN mkdir /home/user/camera-debug-facility

#COPY --chown=user . camera-debug-facility
#USER root
#RUN pip install mkdocs
#RUN pip install mkdocs-material
#RUN make -C camera-debug-facility mkdocs-material
#RUN make -C camera-debug-facility mkdocs-plugins
#USER user
#RUN cd camera-debug-facility; mkdocs build
#COPY /home/user/camera-debug-facility/site/pdf/document.pdf .
