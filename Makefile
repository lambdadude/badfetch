PREFIX = /usr
MANDIR = $(PREFIX)/share/man

all:
	@echo Run \'make install\' to instal badfetch

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p badfetch $(DESTDIR)$(PREFIX)/bin/badfetch
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/badfetch

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/badfetch
