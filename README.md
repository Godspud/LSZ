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

## flags

```-f```
enables fancy mode

```-c```
enables color

```-C```
dont use cache

```--fancy```
same as ```-f```

```--color```
same as ```-c```

```--no-color```
inverse of ```-c``` will not have color(default)

```--lines="$no_of_lines"```
where ```"$no_of_lines``` is the number of discovery lines(only with ```-f```)

```--no-cache```
dont use cache same as ```-C```

```--cache-file="$cache_file_name"```
the cache file used will be ```"~/.cache/LSZ/lsz.sqlite"+"$cache_file_name"``` instead of ```"~/.cache/LSZ/lsz.sqlite"```

```--reset-time="$time"```
default is 8 days
reset time is time till the old rows(created older than this time) are deleted ```"$time"``` is in seconds
the deletion only happens when u run `lsz` or `lsz --prune-cache`

```--clean-cache```
nukes the cache and exits
note will conflict with ```--no-cache```

```--prune-cache```
delete entries in cache that are older than the reset time and exits
note will conflict with ```--no-cache```

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
* Parallel directory scanning
* Configurable size units
* Better terminal resizing behaviour
* More detailed file metadata
* Optional disk-usage mode
* Configuration file

