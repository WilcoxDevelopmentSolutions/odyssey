#!/bin/bash

# TODO: populate these values

PROJECT_NAME=
ROLE_ARN=
CLUSTER_NAME=

# create the ECS cluster. Idempotent.
ecs-cli up --keypair $AWS_KEY_PAIR --capability-iam --size 2 --instance-type t2.micro --vpc vpc-xxxxxxx --subnets subnet-123abc,subnet-321cba
