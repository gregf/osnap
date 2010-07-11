DESTDIR="/usr/local"
SYSCONFDIR="/etc"
VERSION=`cat ${PWD}/version`

all: install

install:
	install -d -m0755 ${DESTDIR}/sbin
	install -m0755 bin/osnap ${DESTDIR}/sbin/osnap
	install -d -m0755 ${DESTDIR}/share/doc/osnap-${VERSION}
	install -m0644 doc/* ${DESTDIR}/share/doc/osnap-${VERSION}
	install -m0600 conf/osnap.conf ${SYSCONFDIR}
uninstall:
	rm -f ${DESTDIR}/sbin/osnap
	rm -f ${SYSCONFDIR}/osnap.conf
	rm -rf ${DESTDIR}/share/doc/osnap-${VERSION}
