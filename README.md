This image is based on `cimg/node:12.18`. It adds `openapi-diff`. The main purpose of this image is because when using CircleCI, volume mount does not work with docker-in-docker, which is required when calling dockerized `openapi-diff`. So this image avoids using dockerized `openapi-diff` by having it installed locally.

## Build and deploy

Build the image:

```bash
$ docker build -t ridebeam/cimgnode-openapi-diff .
```

Tag it (not really necessary now, as it will default to `latest`):

```bash
$ docker tag ridebeam/cimgnode-openapi-diff:latest ridebeam/cimgnode-openapi-diff:1.0.0
```

Push it:

```bash
$ docker push ridebeam/cimgnode-openapi-diff
```

## Usage

Inside the image, you can access `openapi-diff` via:

```bash
$ java -jar /app/openapi-diff.jar <old> <new>
```
