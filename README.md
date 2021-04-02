## Building

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
