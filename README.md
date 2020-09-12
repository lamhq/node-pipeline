# Node Pipeline Image

Docker image for running pipeline of Node Boilerplate project.


## Installed softwares 

- Yarn 1.22.4
- AWS CLI


## How to use this image

Refer it as a base image in `bitbucket-pipeline.yml`

```yml
image: lamhq/node-pipeline:latest

pipelines:
  custom:
    deploy-to-test:
      - step:
          name: Build and Deploy
          deployment: Test
          script:
            - yarn install
            - yarn run deploy
          services:
          - docker
```

Or run it directly in your machine with docker

```shell
docker run --rm -it \
  --name node-pipeline \
  --entrypoint /bin/sh \
  lamhq/node-pipeline:latest
```

