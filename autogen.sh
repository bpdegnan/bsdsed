#!/usr/bin/env bash

ACLOCAL="aclocal"
AUTOHEADER="autoheader"
AUTOMAKE="automake"
AUTOCONF="autoconf"

echo "running aclocal"
${ACLOCAL} ${ACLOCAL_ARGS} 

echo "running autoheader"
${AUTOHEADER}

echo "running automake"
${AUTOMAKE} --add-missing -c --foreign

echo "running autoconf"
${AUTOCONF} -f -i

if [ "${1}" = '-c' ]; then
    echo "running configure"
    ./configure
fi