FROM drpl/devbox-x11

MAINTAINER Luca Greco <luca.greco@alcacoop.it>

# import provisioning assets
ADD ansible-playbook /etc/ansible/playbooks/devbox-firefox-buildtools

# run provisioning
RUN cd /etc/ansible/playbooks/devbox-firefox-buildtools; \
    ln -s /etc/ansible/playbooks/devbox-base/roles/container-cleanup \
          /etc/ansible/playbooks/devbox-firefox-buildtools/roles/container-cleanup ; \
    ansible-playbook site.yml -c local
