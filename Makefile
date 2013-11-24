.PHONY: all install uninstall

PREFIX ?= /usr/local
BINS = $(wildcard bin/git-*)

all:
	@echo "nothing to be done for 'all', simply install"

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@$(foreach b, $(BINS), \
		echo "installing $(b) to $(DESTDIR)$(PREFIX)/bin"; \
		install -m 755 $b $(DESTDIR)$(PREFIX)/bin; \
	)

uninstall:
	@$(foreach b, $(BINS), \
		echo "uninstalling $(b) from $(DESTDIR)$(PREFIX)/bin"; \
		rm -f $(DESTDIR)$(PREFIX)/$(b); \
	)
