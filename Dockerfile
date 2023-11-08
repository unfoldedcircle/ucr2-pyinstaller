ARG PYTHON_VERSION=3.11.6
FROM arm64v8/python:${PYTHON_VERSION}-bullseye

VOLUME /workspace

COPY requirements.txt /
USER root

RUN mkdir -p /home/builder && \
    chown 1000:1000 /home/builder && \
    chmod -R 777 /home/builder && \
    pip install --upgrade pip

RUN pip install -r /requirements.txt


ENV HOME=/home/builder
ENV PATH=/home/builder/.local/bin:$PATH

USER 1000:1000

# Labels, see: https://github.com/opencontainers/image-spec/blob/master/annotations.md
ARG BUILD_DATE
ARG VERSION
ARG REVISION
LABEL org.opencontainers.image.created=$BUILD_DATE
LABEL org.opencontainers.image.authors="markus.z@unfoldedcircle.com"
LABEL org.opencontainers.image.url="https://hub.docker.com/r/unfoldedcircle/r2-pyinstaller"
LABEL org.opencontainers.image.version=$VERSION
LABEL org.opencontainers.image.revision=$REVISION
LABEL org.opencontainers.image.vendor="Unfolded Circle"
LABEL org.opencontainers.image.title="Unfolded Circle PyInstaller build image for Remote Two"
LABEL org.opencontainers.image.description="ARM64 Build image with PyInstaller to create runtime archives for Python based integrations"
