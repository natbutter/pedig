#To build this docker file
#docker build -t pedig . --no-cache

#To run this container locally mounting the current directory:
#docker run -it --rm -v C:\WORK\ShortProjects\pedigree\:/workspace pedig 
#sudo docker run -it --rm -v`pwd`:/workspace pedig 

# Pull base image.
FROM ubuntu:bionic
MAINTAINER Nathaniel Butterworth

#Create some directories to work with
WORKDIR /build

RUN apt-get update -y && \
	apt-get install -y wget unzip gfortran fort77 &&\
	rm -rf /var/lib/apt/lists/*

COPY compile.sh /build/compile.sh

RUN wget https://www6.jouy.inrae.fr/gabi/Media/Fichier/Pedig.zip && \
	unzip Pedig.zip && \
	cd /build/pedig_web/source && \
	cp /build/compile.sh . && \
	./compile.sh && \
	chmod 777 /build/pedig_web/bin_linux/*

ENV PATH "/build/pedig_web/bin_linux/:$PATH"

WORKDIR /workspace

