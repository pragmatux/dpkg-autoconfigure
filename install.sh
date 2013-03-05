#!/bin/sh
BIN=${DESTDIR}/usr/bin
FIRSTBOOT=${DESTDIR}/usr/lib/firstboot/run.d
LIB=${DESTDIR}/usr/lib/dpkg-autoconfigure
ATBOOT=debian/dpkg-autoconfigure-at-boot
install -d $BIN $FIRSTBOOT $LIB $ATBOOT
install dpkg-autoconfigure $BIN
install -d ${DESTDIR}/usr/share/dpkg-autoconfigure/selections.d
install -m 644 20-ptux.selections ${DESTDIR}/usr/share/dpkg-autoconfigure/selections.d
install 40-mountkernfs.sh ${FIRSTBOOT}
install 95-reboot.sh ${FIRSTBOOT}
ln -sf /usr/bin/dpkg-autoconfigure ${FIRSTBOOT}/50-dpkg-autoconfigure
install at-boot $LIB
ln -sf /usr/lib/dpkg-autoconfigure/at-boot ${ATBOOT}/at-boot
