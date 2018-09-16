FROM chainmapper/walletbase-bionic
	
ENV WALLET_URL=https://github.com/mceme/ImageCash/releases/download/1.0.7/imgcash_linux86_64.tar.xz

RUN wget $WALLET_URL -O /tmp/wallet.tar.gz \
	&& cd /usr/local/bin \
	&& tar xvf /tmp/wallet.tar.gz

RUN mkdir /data
ENV HOME /data

#rpc port & main port
EXPOSE 6666 6888

COPY start.sh /start.sh
COPY gen_config.sh /gen_config.sh
RUN chmod 777 /*.sh
CMD /start.sh imgcash.conf IMGC imgcashd