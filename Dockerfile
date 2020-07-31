FROM nvidia/cuda:9.0-cudnn7-runtime-ubuntu16.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qq && \
	apt-get install --yes --no-install-recommends \
	curl g++ wget ca-certificates libxt6 libxrandr2 \
	patch unzip zip pigz jq cmake moreutils time bzip2 \
	libglu1 libxmu6 mesa-utils tightvncserver libc6-dev tcsh \
	libglu1-mesa libgomp1 libjpeg62 mesa-utils libjpeg62 libglu1 \
	libxmu6 libfreetype6-dev libfontconfig libglib2.0-0 libxss1 libxft2

RUN apt-get remove -y xfce4-panel

RUN curl ftp://surfer.nmr.mgh.harvard.edu/pub/dist/freesurfer/7.1.1/freesurfer-linux-centos6_x86_64-7.1.1.tar.gz | tar xz -C /usr/local
ENV FREESURFER_HOME=/usr/local/freesurfer
EXPOSE 5900

COPY virtualgl_2.6_amd64.deb /
RUN dpkg -i /virtualgl_2.6_amd64.deb

RUN apt-get update -qq && \
	apt-get install --yes zenity

COPY freesurfer_license.txt /opt/freesurfer/.license
COPY startup.sh /code/startup.sh

CMD ["/code/startup.sh"]