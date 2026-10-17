FROM python:3.12-slim

RUN apt-get update \
 && apt-get install -y --no-install-recommends openssh-client sshpass \
 && rm -rf /var/lib/apt/lists/* \
 && pip install --no-cache-dir "ansible>=10,<11"

COPY ansible-playbook-wrapper /usr/local/bin/ansible-playbook-wrapper
RUN chmod +x /usr/local/bin/ansible-playbook-wrapper

WORKDIR /project
VOLUME [ "/project" ]

ENTRYPOINT ["/usr/local/bin/ansible-playbook-wrapper"]
