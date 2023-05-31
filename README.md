# mkp224o [![code style: prettier](https://img.shields.io/badge/code_style-prettier-ff69b4.svg)](https://github.com/prettier/prettier) [![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](CODE_OF_CONDUCT.md) [![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release) [![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg)](https://conventionalcommits.org)

Docker image of the [mkp224o](https://github.com/cathugger/mkp224o) vanity generator.

## Usage

```sh
docker run ghcr.io/vansergen/mkp224o -B -S 5 -n 1 preffix
```

Use the `--help` flag to get the list of all supported arguments

```sh
docker run ghcr.io/vansergen/mkp224o --help
```

### Local usage

- Clone the repository

```sh
gh repo clone vansergen/mkp224o
```

- Build the image

```sh
docker build --tag mkp224o:latest --build-arg FLAGS=--enable-ref10 --build-arg FILTERS=--enable-besort ./mkp224o
```

_Note_: The original image is build with the following arguments (see [optimization](https://github.com/cathugger/mkp224o/blob/master/OPTIMISATION.txt))

```sh
FILTERS=--enable-intfilter=64
FLAGS=--enable-donna
```
