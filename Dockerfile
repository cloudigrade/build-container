FROM registry.access.redhat.com/ubi8/ubi-minimal:8.4

RUN microdnf update \
    && microdnf install libcurl-devel gcc openssl-devel python39-devel redhat-rpm-config git make ca-certificates diffutils which \
    && ln -s /usr/bin/pip3.9 /usr/bin/pip \
    && ln -s /usr/bin/python3.9 /usr/bin/python \
    && pip install -U pip \
    && microdnf clean all
