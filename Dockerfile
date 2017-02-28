FROM vizuri/vizuri-python-base:1.0
MAINTAINER Isaac Christoffersen <ichristoffersen@vizuri.com>

USER root

RUN pip --no-cache-dir install --upgrade \
      awscli \
      boto \
      pysphere \
      requests \
      toml && \
    complete -C '/usr/bin/aws_completer' aws

USER vizuri

ENTRYPOINT ["/usr/bin/aws"]
