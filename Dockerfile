FROM python:3.11.4-slim

LABEL org.opencontainers.image.description="Ansible container for GitHub Action ansible-galaxy"
LABEL org.opencontainers.image.source=https://github.com/hspaans/ansible-galaxy-action

COPY requirements.txt /usr/local/etc/requirements.txt

RUN pip install --no-cache-dir -r /usr/local/etc/requirements.txt

# Configure entrypoint for GitHub Action
COPY entrypoint /usr/local/bin/entrypoint
RUN chmod 555 /usr/local/bin/entrypoint

ENTRYPOINT ["/usr/local/bin/entrypoint"]
