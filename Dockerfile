FROM python:3.11.5-slim-bookworm

LABEL org.opencontainers.image.source https://github.com/Container-Driven-Development/Python-Base
LABEL org.opencontainers.image.description "Base image for Python scripts exporting AWS resources using boto library to Prometheus"

ENTRYPOINT ["/usr/local/bin/python"]

ADD requirements.txt /requirements.txt

RUN ["pip", "install", "--no-cache-dir", "-r", "/requirements.txt"]
