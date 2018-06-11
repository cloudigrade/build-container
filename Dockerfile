FROM python:3.6-alpine

RUN apk --no-cache --update add postgresql-libs curl-dev python3-dev gcc postgresql-dev musl-dev libffi-dev git
