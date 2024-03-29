FROM alpine:3.18

RUN apk --no-cache add \
        bash \
        curl \
        zip \
        unzip \
        tar \
        gzip \ 
        jq \
        grep

ENV BATS_VERSION "1.2.1"
RUN curl -sSL https://github.com/bats-core/bats-core/archive/v$BATS_VERSION.tar.gz -o /tmp/bats.tgz \
    && tar -zxf /tmp/bats.tgz -C /tmp \
    && /bin/bash /tmp/bats-core-$BATS_VERSION/install.sh /usr/local

RUN rm -rf /tmp/*