FROM drpl/devbox-base

MAINTAINER Luca Greco <luca.greco@alcacoop.it>

# import provisioning assets
ADD ansible-playbook /etc/ansible/playbooks/devbox-x11

# run provisioning
RUN apt-get update ; \
    ansible-playbook /etc/ansible/playbooks/devbox-x11/site.yml -c local ; \
    ansible-playbook /etc/ansible/playbooks/devbox-base/cleanup.yml -c local
