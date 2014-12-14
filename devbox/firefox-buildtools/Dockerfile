FROM drpl/devbox-x11:latest

MAINTAINER Luca Greco <luca.greco@alcacoop.it>

# import provisioning assets
ADD ansible-playbook /etc/ansible/playbooks/devbox-firefox-buildtools

# run provisioning
RUN apt-get update && \
    ansible-playbook /etc/ansible/playbooks/devbox-firefox-buildtools/site.yml -c local && \
    ansible-playbook /etc/ansible/playbooks/devbox-base/cleanup.yml -c local
