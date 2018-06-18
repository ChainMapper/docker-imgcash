FROM ubuntu:artful

RUN apt-get update \
    && apt-get -y upgrade \
	&& apt-get -y install libboost-system1.62.0 libboost-filesystem1.62.0 libboost-program-options1.62.0 \
	libboost-thread1.62.0 libboost-chrono1.62.0 libdb4.8 libdb4.8++ libdb5.3 libdb5.3++ libssl1.0.0 unzip \
	libevent-2.1-6 libevent-pthreads-2.1-6 software-properties-common \
    && add-apt-repository ppa:bitcoin/bitcoin \
    && apt-get update \
    && apt-get -y install libdb4.8-dev libdb4.8++-dev unzip \
    && apt-get -y install wget libzmq5 libminiupnpc10
	
ENV WALLET_URL=https://github.com/mceme/ImgCash/releases/download/1.0.2/imgcash_linux86_64.tar.xz

RUN wget $WALLET_URL -O /tmp/wallet.tar.gz \
	&& cd /usr/local/bin \
	&& tar xvf /tmp/wallet.tar.gz \
	&& mkdir -p /data/.imgcashcore

COPY imgcash.conf /data/.imgcashcore/imgcash.conf
	
#rpc port & main port
EXPOSE 6898 6888

ENV HOME /data

COPY start.sh /start.sh
RUN chmod 777 /start.sh
CMD /start.sh
