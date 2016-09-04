# Run with: docker run -v undionly-build:/undionly ipxe-build
FROM ubuntu

RUN apt-get update && apt-get install -y git gcc make liblzma-dev

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

