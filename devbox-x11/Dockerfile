FROM drpl/devbox-base

MAINTAINER Luca Greco <luca.greco@alcacoop.it>

# import provisioning assets
ADD ansible-playbook /etc/ansible/playbooks/devbox-x11

# run provisioning
RUN cd /etc/ansible/playbooks/devbox-x11; \
    ln -s /etc/ansible/playbooks/devbox-base/roles/container-cleanup \
          /etc/ansible/playbooks/devbox-x11/roles/container-cleanup ; \
    apt-get update ; \
    ansible-playbook site.yml -c local
