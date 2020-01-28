FROM fedora:29

RUN dnf update -y \
    && dnf install libcurl-devel gcc openssl-devel python3-devel redhat-rpm-config git make -y \
    && ln -s /usr/bin/pip3.7 /usr/bin/pip \
    && ln -s /usr/bin/python3 /usr/bin/python \
    && /usr/bin/pip install --upgrade "urllib3<1.25"
