# armhf Mosquitto docker image

## Description

[Mosquitto](http://mosquitto.org) Docker image based on Alpine Linux.

## Build

To build:

```
docker build .
```

It's based on foertel/alpine with qemu-arm-static so it can be built (and run) on x86.

## Usage

Start the container:

```
docker run -d -p 1883:1883 foertel/armhf-alpine-mosquitto
```

## Links

- [Git Repo](https://github.com/foertel/armhf-alpine-mosquitto)
