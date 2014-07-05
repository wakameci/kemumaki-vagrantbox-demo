#!/bin/bash
#
# requires:
#  bash
#
set -e
set -o pipefail
set -x

# Do some changes ...

su - jenkins -c "$SHELL -ex" <<'EOS'
  umask 077

  cp -f /var/lib/jenkins/.ssh/authorized_keys /var/lib/jenkins/.ssh/authorized_keys.saved

  if ! [[ -d /var/tmp/kemukins-jenkins-demo ]]; then
    git clone https://github.com/wakameci/kemukins-jenkins-demo.git /var/tmp/kemukins-jenkins-demo
  fi

  cd /var/tmp/kemukins-jenkins-demo
  git checkout master
  git pull

  rsync -ax /var/tmp/kemukins-jenkins-demo/.git /var/lib/jenkins
  cd /var/lib/jenkins

  git status
  git checkout .
  git status

  cp -f /var/lib/jenkins/.ssh/kemukins-demo.pub /var/lib/jenkins/.ssh/authorized_keys
EOS
