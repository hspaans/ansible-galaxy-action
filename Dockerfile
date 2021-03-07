FROM python:3.9.2-slim

LABEL org.opencontainers.image.description="Ansible container for GitHub Action ansible-galaxy"
LABEL org.opencontainers.image.source=https://github.com/hspaans/ansible-galaxy-action

LABEL repository="https://github.com/hspaans/ansible-galaxy-action"
LABEL homepage="https://github.com/hspaans/ansible-galaxy-action"
LABEL maintainer="Hans Spaans <hans@dailystuff.nl>"

COPY requirements.txt /usr/local/etc/requirements.txt

RUN pip install --no-cache-dir -r /usr/local/etc/requirements.txt

COPY entrypoint /usr/local/bin/entrypoint
RUN chmod 555 /usr/local/bin/entrypoint

ENTRYPOINT ["/usr/local/bin/entrypoint"]
