FROM vizuri/vizuri-python-base:1.0
MAINTAINER Isaac Christoffersen <ichristoffersen@vizuri.com>

USER root

RUN pip install --upgrade \
      awscli \
      boto \
      pip \
      pysphere \
      requests \
      toml && \
    complete -C '/usr/bin/aws_completer' aws

USER vizuri

ENTRYPOINT ["/usr/bin/aws"]
