FROM fedora:29

RUN dnf update -y \
    && dnf install libcurl-devel gcc openssl-devel python3-devel redhat-rpm-config git -y \
    && ln -s /usr/bin/pip3.7 /usr/bin/pip \
    && /usr/bin/pip install --upgrade "urllib3<1.25"
