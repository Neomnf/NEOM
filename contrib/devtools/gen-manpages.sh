#!/usr/bin/env bash

export LC_ALL=C
TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

NEOMD=${NEOMD:-$BINDIR/neomd}
NEOMCLI=${NEOMCLI:-$BINDIR/neom-cli}
NEOMTX=${NEOMTX:-$BINDIR/neom-tx}
NEOMQT=${NEOMQT:-$BINDIR/qt/neom-qt}

[ ! -x $NEOMD ] && echo "$NEOMD not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
NEOMVER=($($NEOMCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for neomd if --version-string is not set,
# but has different outcomes for neom-qt and neom-cli.
echo "[COPYRIGHT]" > footer.h2m
$NEOMD --version | sed -n '1!p' >> footer.h2m

for cmd in $NEOMD $NEOMCLI $NEOMTX $NEOMQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${NEOMVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${NEOMVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
