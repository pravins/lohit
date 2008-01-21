#!/bin/sh

echo Creating tarball of Checked Out Lohit Font files distribution
sh generate.sh
ver=`cat ChangeLog | grep "Current Version :-" | awk '{ print $4}'`
mv TTFfiles lohit-fonts-$ver
cp COPYING ChangeLog README AUTHORS lohit-fonts-$ver
cd lohit-fonts-$ver
mkdir -p bengali gujarati  hindi  kannada  malayalam  oriya  punjabi  tamil  telugu
mv lohit_bn.ttf bengali
mv lohit_gu.ttf gujarati
mv lohit_hi.ttf hindi
mv lohit_kn.ttf kannada 
mv lohit_ml.ttf malayalam
mv lohit_or.ttf oriya 
mv lohit_pa.ttf punjabi
mv lohit_ta.ttf tamil 
mv lohit_te.ttf telugu
cd ..
tar -cf lohit-fonts-$ver.tar lohit-fonts-$ver
gzip lohit-fonts-$ver.tar
rm -rf lohit-fonts-$ver
