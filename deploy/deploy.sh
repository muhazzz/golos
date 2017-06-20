#!/bin/bash

set -e

if [ $TRAVIS_BRANCH == "master" ]; then

  deploy/install-doxygen.sh
  deploy/set-ssh.sh
  deploy/docs-deploy.sh --yes

else
  echo "Nothing to deploy, since the current branch is not master."
fi

