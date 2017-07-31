#!/bin/bash

bin=`which $0`
bin=`dirname ${bin}`
bin=`cd "$bin"; pwd`

FILESDIR=`cd $bin/../files; pwd`

FILES=`ls ${FILESDIR}`

for I in ${FILES}; do
    if [ -f $I ]; then
        cp ~/$I ${FILESDIR}/$I -r
        echo "backup .$I"
    fi
    ln -sf ${FILESDIR}/$I ~/.$I
    echo "link ~/.$I to ${FILESDIR}/$I"
done
