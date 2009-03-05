#!/bin/sh

echo Creating tarball of Checked Out Lohit Font files distribution
sh generate.sh
ver=`cat ChangeLog | grep "Current Version :-" | awk '{ print $4}'`
mv TTFfiles lohit-fonts-$ver
cp COPYING ChangeLog README AUTHORS lohit-fonts-$ver
cd lohit-fonts-$ver
mkdir -p assamese bengali gujarati  hindi  kannada  malayalam  oriya  punjabi  tamil  telugu marathi maithili konkani kashmiri sindhi nepali

mv lohit_as.ttf assamese
mv lohit_bn.ttf bengali
mv lohit_gu.ttf gujarati
mv lohit_hi.ttf hindi
mv lohit_kn.ttf kannada 
mv lohit_ml.ttf malayalam
mv lohit_or.ttf oriya 
mv lohit_pa.ttf punjabi
mv lohit_ta.ttf tamil 
mv lohit_te.ttf telugu
mv lohit_mr.ttf marathi
mv lohit_mai.ttf maithili
mv lohit_kok.ttf konkani
mv lohit_ks.ttf kashmiri
mv lohit_ne.ttf nepali
mv lohit_sd.ttf sindhi
cd ..
tar -cf lohit-fonts-$ver.tar lohit-fonts-$ver
gzip lohit-fonts-$ver.tar
rm -rf lohit-fonts-$ver
