FROM alpine

ARG VERSION

RUN wget https://github.com/shssoichiro/oxipng/releases/download/v${VERSION}/oxipng-${VERSION}-$(uname -m)-unknown-linux-musl.tar.gz -O oxipng.tar.gz && \
    tar -xzf oxipng.tar.gz && \
    mv oxipng-${VERSION}-$(uname -m)-unknown-linux-musl/oxipng /usr/local/bin/oxipng && \
    chmod +x /usr/local/bin/oxipng && \
    rm -rf oxipng.tar.gz oxipng-${VERSION}-$(uname -m)-unknown-linux-musl

ENTRYPOINT ["/usr/local/bin/oxipng"]