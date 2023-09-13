FROM alpine:3.18.3 as builder

RUN apk add --no-cache autoconf build-base gcc git libsodium-dev make

RUN git clone https://github.com/cathugger/mkp224o.git mkp224o

WORKDIR /mkp224o

ARG GIT_SHA=870c089a3c437005818a78b132f755f4796d6781

RUN git checkout $GIT_SHA

RUN ./autogen.sh

ARG FILTERS=--enable-intfilter=64

ARG FLAGS=--enable-donna

RUN ./configure $FLAGS $FILTERS

RUN make

FROM alpine:3.18.3 as mkp224o

RUN apk add --no-cache libsodium

COPY --from=builder /mkp224o/mkp224o /usr/local/bin/mkp224o

VOLUME /root/mkp224o

ENTRYPOINT ["mkp224o", "-d", "/root/mkp224o"]
