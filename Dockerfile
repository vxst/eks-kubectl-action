FROM amazon/aws-cli

LABEL maintainer="Ian Belcher <github.com@ianbelcher.me>, VXST<vxst@vxst.org>"

RUN curl -LO https://dl.k8s.io/release/v1.19.6/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
