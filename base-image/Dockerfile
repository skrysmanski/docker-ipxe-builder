FROM alpine

RUN apk add --update gcc git make perl musl-dev xz-dev \
 && rm -rf /var/cache/apk/*

# Check out iPXE
# See: http://ipxe.org/download
RUN git clone git://git.ipxe.org/ipxe.git /ipxe

WORKDIR /ipxe/src

# Pre-build undionly.kpxe
RUN make bin/undionly.kpxe

ENV ARTIFACTS_DIR /artifacts

RUN mkdir ${ARTIFACTS_DIR}

COPY build.sh /
RUN chmod +x /build.sh

