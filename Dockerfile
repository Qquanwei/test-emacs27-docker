from quanwei/netease-debian

RUN apt-get update
RUN apt install -y git
RUN apt install -y build-essential automake texinfo libjpeg-dev libncurses5-dev
RUN apt install -y libtiff5-dev libgif-dev libpng-dev libxpm-dev libgtk-3-dev libgnutls28-dev 
RUN git clone -b master git://git.sv.gnu.org/emacs.git
RUN cd emacs && \
    ./autogen.sh && \
	./configure --with-mailutils && \
	make && \
	make install

