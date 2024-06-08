ARG SOURCE_IMAGE="fedora-coreos"
ARG SOURCE_TAG="40"
FROM ghcr.io/ublue-os/${SOURCE_IMAGE}:${SOURCE_TAG}
COPY build.sh /tmp/build.sh
RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    ostree container commit
