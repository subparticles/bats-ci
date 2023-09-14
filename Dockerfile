FROM bats/bats:v1.10.0

RUN apk --no-cache add \
        bash \
        curl \
        zip \
        unzip \
        tar \
        gzip \ 
        jq \
        grep