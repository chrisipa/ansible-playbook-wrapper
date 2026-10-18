FROM python:3.12-slim

# mitogen >= 0.3.9 is required for ansible-core 2.17 (Ansible 10)
RUN apt-get update \
 && apt-get install -y --no-install-recommends openssh-client sshpass \
 && rm -rf /var/lib/apt/lists/* \
 && pip install --no-cache-dir "ansible>=10,<11" "mitogen>=0.3.9,<0.4" \
 && ln -s "$(python -c 'import ansible_mitogen, os; print(os.path.dirname(os.path.dirname(ansible_mitogen.__file__)))')" /opt/mitogen \
 && test -d /opt/mitogen/ansible_mitogen/plugins/strategy

COPY ansible-playbook-wrapper /usr/local/bin/ansible-playbook-wrapper
RUN chmod +x /usr/local/bin/ansible-playbook-wrapper

WORKDIR /project
VOLUME [ "/project" ]

ENTRYPOINT ["/usr/local/bin/ansible-playbook-wrapper"]
