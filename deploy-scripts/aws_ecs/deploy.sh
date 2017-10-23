#!/bin/bash


# Deploy application
bash pre_deploy.sh

ecs-cli compose --file api/docker-compose.yml service up \
				--target-group-arn $PROD_TARGET_GROUP_ARN \
				--container-name api \
				--container-port 8080 \
				--role ecsServiceRole \
# will create *ECS Services* from Docker Compose files             
# ^^^^^^^^ will shut down copies of old containers automatically!!! See screenshotted logs from: https://serradev.wordpress.com/2017/05/11/cluster-of-docker-containers-in-aws-ecs-via-gitlab-pipelines/

#bash post_deploy.sh