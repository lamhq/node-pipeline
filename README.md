# React Pipeline Image

Docker image for running pipeline of Node Boilerplate project.


## Installed softwares 

- Yarn 1.22.4
- MongoDB 4.2.6


## How to use this image

Refer it as a base image in `bitbucket-pipeline.yml`

```yml
pipelines:
  custom:
    deploy-to-test:
      - step:
          name: Build and Deploy
          deployment: Test
          image: lamhq/node-pipeline:latest
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

