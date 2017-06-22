#!/bin/bash

set -e

if [[ "$TRAVIS_BRANCH" == "master" ]] || [[ "$TRAVIS_BRANCH" =~ ^golos- ]]; then

  # deploy/install-doxygen.sh

  deploy/set-ssh.sh
  deploy/docs-deploy.sh --yes

  ssh developers.golos.io /opt/makedocs.sh $TRAVIS_BRANCH

else
  echo "Nothing to deploy, since the current branch is not master."
fi

