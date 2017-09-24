#!/bin/bash

# could contain additional commands to migrate additional data stores in the future.
# will be called by the deploy scripts/hosting provider as part of pre-deploy work.
# will be executed on the targeted deployment hardware / environment

bundle exec rake db:migrate