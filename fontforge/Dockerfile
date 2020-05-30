FROM alpine:edge
RUN apk add fontforge fontforge-python3 \
    --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
ENTRYPOINT ["fontforge"]