#!/bin/sh

echo Creating tarball of Checked Out Lohit Font files distribution
sh generate.sh
ver=`cat ChangeLog | grep "Current Version :-" | awk '{ print $4}'`
mv TTFfiles fonts-indic-$ver
cp COPYING ChangeLog README fonts-indic-$ver
tar -cf fonts-indic-$ver.tar fonts-indic-$ver
gzip fonts-indic-$ver.tar
rm -rf fonts-indic-$ver
