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

```-h```
shows help and exits

```--fancy```
same as ```-f```

```--color```
same as ```-c```

```--no-color```
inverse of ```-c``` will not have color(default)

```--help```
same as ```-h```

```--lines="$no_of_lines"```
where ```"$no_of_lines``` is the number of discovery lines(only with ```-f```)

```--no-cache```
dont use cache same as ```-C```

```--cache-file="$cache_file_name"```
the cache file used will be ```"$cache_file_name"``` (created under ```~/.cache/LSZ/```) instead of the default ```LSZ.sqlite```

```--reset-time="$time"```
default is 8 days
reset time is time till the old rows(created older than this time) are deleted ```"$time"``` is in seconds
deletion only happens when u run ```lsz --prune-cache``` (or everything at once with ```--clean-cache```) - a normal ```lsz``` run never deletes rows, it just treats old ones as a cache miss

```--clean-cache```
nukes the cache and exits
note will conflict with ```--no-cache```

```--prune-cache```
delete entries in cache that are older than the reset time and exits
note will conflict with ```--no-cache```

```--si```
show sizes in decimal(1000-based, kB/MB/GB/TB) instead of the default binary(1024-based, KB/MB/GB/TB)
note will conflict with ```--unit```

```--unit="$unit"```
force every size to show in one specific unit instead of auto-scaling
valid units: ```B kB KB MB GB TB```
note will conflict with ```--si```

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
* Better terminal resizing behaviour
* More detailed file metadata
* Optional disk-usage mode
* Configuration file
