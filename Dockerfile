FROM ipxe-build-base

COPY embed.ipxe ${ARTIFACTS_DIR}/

RUN /build.sh

