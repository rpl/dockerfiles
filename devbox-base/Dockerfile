FROM ansible/ubuntu14.04-ansible:stable

MAINTAINER Luca Greco <luca.greco@alcacoop.it>

# import provisioning assets
ADD ansible-playbook /etc/ansible/playbooks/devbox-base

# run provisioning
RUN cd /etc/ansible/playbooks/devbox-base; \
    apt-get update ; \
    ansible-playbook site.yml -c local

# base cli environment vars
ENV TERM="xterm-256color" \
    LC_ALL="en_US.UTF-8"  \
    SHELL="/bin/bash"

CMD ["/bin/bash", "-l"]
