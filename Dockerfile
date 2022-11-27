ARG scheme=small
FROM ghcr.io/xu-cheng/texlive-${scheme}:latest

LABEL \
  org.opencontainers.image.title="Docker Image of TeXLive with MySTjs tools installed" \
  org.opencontainers.image.authors="Kai Norman Clasen <k.clasen@protonmail.com>" \
  org.opencontainers.image.source="https://github.com/kai-tub/latex-docker-with-myst" \
  org.opencontainers.image.licenses="MIT"

COPY \
    LICENSE \
    README.md \
    setup.sh \
    /

RUN /setup.sh

CMD ["/bin/bash"]
