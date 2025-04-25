FROM quay.io/ansible/ansible-rulebook:latest

RUN ansible-galaxy collection install cisco.ios

RUN pip install ansible-pylibssh

COPY rulebook.yml /data/rulebook.yml

COPY configure_ports.yml /data/configure_ports.yml
