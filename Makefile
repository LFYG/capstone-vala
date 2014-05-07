DIRS=vala
.PHONY: all clean install uninstall
all clean install uninstall:
	$(foreach dir,${DIRS},${MAKE} -C $(dir) $@;)

VERSION=2.1

R2CS=capstone-vala-$(VERSION)
dist:
	rm -rf $(R2CS)
	git clone . $(R2CS)
	rm -rf $(R2CS)/.git
	tar czvf $(R2CS).tar.gz $(R2CS)
