INSTALLDIR=/u/sbp/bussi/public_html/plumed-tuto2011
.PHONY: all clean install fullclean

all:
	doxygen

install: all
	mkdir -p  $(INSTALLDIR)/html
	chmod a+x $(INSTALLDIR)
	chmod a+x $(INSTALLDIR)/html
	cp html/* $(INSTALLDIR)/html/
	chmod a+r -R $(INSTALLDIR)

clean:
	rm -fr html *~

fullclean: clean
	rm -fr $(INSTALLDIR)/html

