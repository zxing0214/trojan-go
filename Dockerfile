FROM zxing/alpine

WORKDIR /
ENV _VERSION 0.8.2

RUN set -x && \
	wget --no-check-certificate https://github.com/p4gefau1t/trojan-go/releases/download/v${_VERSION}/trojan-go-linux-amd64.zip && \
    mkdir /trojan-go && \
    mv trojan-go-linux-amd64.zip /trojan-go && \
 	cd trojan-go && \
	unzip trojan-go-linux-amd64.zip && \
	rm -rf *.zip &&\
    mkdir /config
ADD config.json /config

VOLUME /trojan-go
WORKDIR /trojan-go

CMD /trojan-go/trojan-go -config /config/config.json