FROM skrysmanski/ipxe-builder-base

COPY embed.ipxe ${ARTIFACTS_DIR}/

RUN /build.sh

