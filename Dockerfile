FROM arm64v8/alpine:3.14

RUN apk add --no-cache bash
RUN apk add coreutils
RUN apk upgrade --update-cache --available && \
    apk add openssl && \
    rm -rf /var/cache/apk/*

COPY bin /bin

RUN chmod +x bin/entrypoint.sh
RUN chmod +x bin/encrypt.sh
RUN chmod +x bin/decrypt.sh
ENTRYPOINT ["/bin/entrypoint.sh"]