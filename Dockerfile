FROM python:3.8-slim

LABEL repository="https://github.com/hspaans/ansible-galaxy-action"
LABEL homepage="https://github.com/hspaans/ansible-galaxy-action"
LABEL maintainer="Hans Spaans <hans@dailystuff.nl>"

RUN pip install ansible==2.10.0

COPY entrypoint /usr/local/bin/entrypoint
RUN chmod 555 /usr/local/bin/entrypoint

ENTRYPOINT ["/usr/local/bin/entrypoint"]
