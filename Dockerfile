FROM python:3.6.8-alpine3.8

RUN apk --no-cache --update add postgresql-libs curl-dev python3-dev gcc postgresql-dev musl-dev libffi-dev git
