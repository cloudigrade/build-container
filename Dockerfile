FROM registry.access.redhat.com/ubi8/ubi-minimal:8.7-923

ENV PATH="$PATH:/usr/pgsql-12/bin"

RUN rpm -iv https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm \
    && microdnf update \
    && microdnf install postgresql12-devel libcurl-devel gcc openssl-devel python39-devel redhat-rpm-config git make ca-certificates diffutils which \
    && ln -s /usr/bin/pip3.9 /usr/bin/pip \
    && ln -s /usr/bin/python3.9 /usr/bin/python \
    && pip install -U pip \
    && microdnf clean all
