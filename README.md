pkgcacheclean
=============

- [DESCRIPTION](#description)
- [USAGE](#usage)
- [OPTIONS](#options)
- [BUILDING](#building)
- [AUTHORS](#authors)
- [LINKS](#links)
- [LICENSE](#license)

------------------------------------------------------------------------

## DESCRIPTION
**pkgcacheclean** is an application to clean the pacman package cache on Arch Linux.

## USAGE
```
$ pkgcacheclean [options] [preserve_number]
```

For installed packages, `preserve_number` is the number of files (versions) per package to be preserved on the pacman cache. For uninstalled packages all files (versions) are deleted. The default number is 2.

## OPTIONS
Use the `--help` switch for a list of options, or see the manpage.

## BUILDING
- Runtime requirements:
    - glibc
    - pacman (libalpm)

- Build requirements:
    - a working C compiler
    - *make*
    - the runtime requirements

Building is done through *make*. A simple installation procedure would be:

```
$ make
$ sudo make install
```

The provided Makefile supports the common `DESTDIR`, `PREFIX`, `BINDIR`, and `MANDIR` variables. For more details see the INSTALL file.

On Arch Linux you can easly install it with *makepkg*.

## AUTHORS
**pkgcacheclean** is currently maintained by Daniel Bermond.

  - [https://github.com/dbermond/pkgcacheclean/](https://github.com/dbermond/pkgcacheclean/)

The application was originally designed by Yungu Zhu (Auguste Pop).

## LINKS
- The original (and old) Arch Linux forum topic posted by Auguste can be seen [here](https://bbs.archlinux.org/viewtopic.php?pid=841774). Please do not reply to this thread since it is very old.

- [AUR package](https://aur.archlinux.org/packages/pkgcacheclean/)

## LICENSE
GNU General Public License as published by the Free Software Foundation, either version 2 of the License, or (at your option) any later version.

For details see the file COPYING or visit:
[http://www.gnu.org/licenses/](http://www.gnu.org/licenses/)

------------------------------------------------------------------------
