#!/bin/bash

# TODO: populate these values etc etc

PROJECT_NAME=
ROLE_ARN=
CLUSTER_NAME=

ecs-cli compose --project-name $PROJECT_NAME \
                --task-role-arn=ROLE_ARN \
                --cluster=CUSTER_NAME \
                -f Dockerfile.ecs.prod \
                run odyssey "bash build-scripts/migrate.sh"