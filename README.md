# LSZ

## if u find error pls open issue with ur full traceback

### `ls` but bettr

i wrote this cos i was tired of ls not showing folders sizes
and i went off the rails

## Installation

clone:

```bash
git clone https://github.com/Godspud/LSZ.git
cd LSZ
```

build(move and make the cmd work):

```bash
make init
```

then:
```bash
lsz
```
works as a cmd

## use

use it:

```bash
lsz
```

use on a dir:

```bash
lsz ~/Downloads
```

### OOH fancyy

`-f` or `--fancy` makes it go fancy

### colorful

`-C` or `--color` makes it hv color(using ls colors)

`-c` or `--no-color` make it all be terminal default color

## uninstall(pls no)

```bash
make clean
```

## requirements

* python 3
* make

## TODO

* Configurable sorting modes
* More `ls`-compatible options
* Improved performance for very large directories (caching)
* Parallel directory scanning
* Configurable size units
* Better terminal resizing behaviour
* More detailed file metadata
* Optional disk-usage mode
* Configuration file

