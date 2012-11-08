#!/bin/bash

ocver=1.5.3.x
bdir=./build/kodecrm-opencart$ocver

rm -rf $bdir
rm $bdir.tar.gz
rm $bdir.zip

cp -R ./added $bdir/
cp -R ./modified $bdir/
cp ./changes.txt $bdir/
cp ./install.txt $bdir/

tar czf $bdir.tar.gz $bdir
zip -rq $bdir.zip $bdir

