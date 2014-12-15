FROM drpl/devbox-x11:latest

## loosely based on: https://github.com/darinmorrison/docker-haskell/blob/master/7.8/Dockerfile

## custom apt-get install options
ENV OPTS_APT        -y --no-install-recommends

## install ghc
RUN apt-get update \
 && apt-get install ${OPTS_APT}\
      ghc cabal-install \
      alex happy \
      zlib1g-dev libtinfo-dev \
 && ansible -c local /etc/ansible/playbooks/devbox-base/cleanup.yml
