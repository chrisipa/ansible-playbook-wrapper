FROM ubuntu:focal

COPY ansible-playbook-wrapper /usr/local/bin/ansible-playbook-wrapper
RUN chmod +x /usr/local/bin/ansible-playbook-wrapper

WORKDIR /project
VOLUME [ "/project" ]

ENTRYPOINT ["/usr/local/bin/ansible-playbook-wrapper"]