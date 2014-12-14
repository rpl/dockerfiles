FROM ansible/ubuntu14.04-ansible:stable

MAINTAINER Luca Greco <luca.greco@alcacoop.it>

# import provisioning assets
ADD ansible-playbook /etc/ansible/playbooks/devbox-base

# run provisioning
RUN apt-get update && \
    ansible-playbook /etc/ansible/playbooks/devbox-base/site.yml -c local && \
    ansible-playbook /etc/ansible/playbooks/devbox-base/cleanup.yml -c local

# base cli environment vars
ENV TERM "xterm-256color"
ENV LC_ALL "C"
ENV SHELL "/bin/bash"

CMD ["/bin/bash", "-l"]
