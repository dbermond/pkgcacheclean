# Makefile for pkgcacheclean
#
# Copyright (c) 2019 Daniel Bermond < gmail.com: danielbermond >
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

NAME    := pkgcacheclean
RELEASE := 1.9.0

# source directories
SRC_DIR := src
DOC_DIR := doc

# install directories
PREFIX  ?= /usr/local
BINDIR  ?= $(PREFIX)/bin
DATADIR ?= $(PREFIX)/share
MANDIR  ?= $(DATADIR)/man

# build options
CC := gcc
CARCH ?= x86_64
WARNS ?= -Wall
SRC_OPTS  ?= -DVERSION=\"$(RELEASE)\" -DCARCH=\"$(CARCH)\"
SRC_FLAGS ?= $(WARNS) $(SRC_OPTS) $(CPPFLAGS) $(CFLAGS)
LIBS := -lalpm

.PHONY: all clean distclean install uninstall

all: $(NAME)

$(NAME):
	$(CC) -o $(NAME) $(SRC_FLAGS) $(SRC_DIR)/$(NAME).c $(LDFLAGS) $(LIBS)

clean:
	@if [ -f '$(NAME)' ] ; \
	then \
	    printf '%s\n' "removing file '$(NAME)'" ; \
	    rm -f $(NAME) ; \
	fi

distclean: clean

install: all
	install -D -m755     $(NAME)   $(DESTDIR)$(BINDIR)/$(NAME)
	install -D -m644 doc/$(NAME).8 $(DESTDIR)$(MANDIR)/man8/$(NAME).8

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/$(NAME)
	rm -f $(DESTDIR)$(MANDIR)/man8/$(NAME).8
	rm -f $(DESTDIR)$(MANDIR)/man8/$(NAME).8.gz
