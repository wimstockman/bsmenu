PREFIX ?= /usr
MANDIR ?= $(PREFIX)/share/man
DOCDIR ?= $(PREFIX)/share/doc/bsmenu

all:
	@echo Run \'make install\' to install bsmenu.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@mkdir -p $(DESTDIR)$(DOCDIR)
	@cp -p bsmenu $(DESTDIR)$(PREFIX)/bin/bsmenu
	@cp -p bsmenu.1 $(DESTDIR)$(MANDIR)/man1
	@cp -p README.md $(DESTDIR)$(DOCDIR)
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/bsmenu

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/bsmenu
	@rm -rf $(DESTDIR)$(MANDIR)/man1/bsmenu.1
	@rm -rf $(DESTDIR)$(DOCDIR)
