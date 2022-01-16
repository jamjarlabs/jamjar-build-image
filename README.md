# JamJar Build Image

This project hosts the Dockerfile for the JamJar build image, this image contains all the tools required to develop the
[JamJar game engine](https://github.com/jamjarlabs/JamJar).

## Usage

You can use this image like this:

```bash
docker run -it jamjarlabs/jamjar-build-image:latest bash
```

## Developing

You can build this image by using the Makefile and the targets provided:

- `make` = builds the image, if no `VERSION` parameter is provided will default to `dev`.
