#!/bin/bash

ocver=1.5.3.x
bdir=./build/kodecrm-opencart$ocver

rm -rf $bdir
rm $bdir.tar.gz
rm $bdir.zip

for f in `find ./ -type f | grep '^\.\/[^.git|build.sh|README.rst].*[^~]$'`
do
    tdir=`echo "$f" | sed -e "s/^.\/*//"`
    tdirname=`dirname $tdir`
    if [ $tdirname  == "." ];
    then
        cp $f $bdir/
    else
        mkdir -p $bdir/$tdirname
        cp -r $f $bdir/$tdirname/
    fi
done

cp README.rst $bdir/README.txt

tar czf $bdir.tar.gz $bdir
zip -rq $bdir.zip $bdir

