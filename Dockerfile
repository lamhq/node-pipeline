FROM node:12.16.2-alpine

# Install mongodb
# RUN apk add --no-cache mongodb-tools

# Install aws cli
RUN apk add --no-cache python py-pip
RUN pip install awscli

# This Dockerfile doesn't need to have an entrypoint and a command
# as Bitbucket Pipelines will overwrite it with a bash script.