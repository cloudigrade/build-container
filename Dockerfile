FROM registry.access.redhat.com/ubi8/ubi-minimal:8.3

RUN microdnf update \
    && microdnf install libcurl-devel gcc openssl-devel python38-devel redhat-rpm-config git make ca-certificates diffutils which \
    && ln -s /usr/bin/pip3.8 /usr/bin/pip \
    && ln -s /usr/bin/python3.8 /usr/bin/python \
    && pip install -U pip \
    && microdnf clean all
