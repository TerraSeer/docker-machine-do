# docker-machine-do

> Run a command on each machine available with `docker-machine ls`.

Docker makes it quick and easy to manage updates *inside* of a container, but
when you're managing lots of virtual machines it's hard to ensure that you're
running all of the commands on all of the machines. You *could* create a Unix
pipe monstrosity between `docker-machine` and `xargs` and `sh` or maybe even
something clever like [`xpanes`](https://github.com/greymd/tmux-xpanes), but
using this project is simpler, easier, and maybe even more colorful.

## Usage

```console
$ dmdo date
earth: date
earth: Mon Oct  7 19:43:57 UTC 2019

jupiter: date
jupiter: Mon Oct  7 19:43:59 UTC 2019
```

```console
$ dmdo 'hostname | sha1sum'
earth: hostname | sha1sum
earth: 80679efea04df2c31d397497ca25c6e5c79fc623  -

jupiter: hostname | sha1sum
jupiter: 04e6eed9e2565bd04fbd857d1a2e3a2242f1b914 -
```

## Installation

```shell
curl https://raw.githubusercontent.com/fraction/docker-machine-do/master/dmdo > dmdo
source dmdo
```

## License

AGPL
