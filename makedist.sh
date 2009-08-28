#!/bin/sh

echo Creating tarball of Checked Out Lohit Font files distribution
sh generate.sh
ver=`cat ChangeLog | grep "Current Version :-" | awk '{ print $4}'`
mv TTFfiles lohit-fonts-$ver
cp *.conf lohit-fonts-$ver
cp COPYRIGHT COPYING ChangeLog README AUTHORS lohit-fonts-$ver
cd lohit-fonts-$ver
mkdir -p assamese bengali gujarati  hindi  kannada  malayalam  oriya  punjabi  tamil  telugu marathi maithili konkani kashmiri sindhi nepali

mv lohit_as.ttf assamese
mv  66-lohit-assamese.conf assamese
mv lohit_bn.ttf bengali
mv  66-lohit-bengali.conf bengali
mv lohit_gu.ttf gujarati
mv  66-lohit-gujarati.conf gujarati
mv lohit_hi.ttf hindi
mv  66-lohit-hindi.conf hindi
mv lohit_kn.ttf kannada 
mv  66-lohit-kannada.conf kannada
mv lohit_ml.ttf malayalam
mv  67-lohit-malayalam.conf malayalam
mv lohit_or.ttf oriya 
mv  66-lohit-oriya.conf oriya
mv lohit_pa.ttf punjabi
mv  66-lohit-punjabi.conf punjabi
mv lohit_ta.ttf tamil 
mv  66-lohit-tamil.conf tamil
mv lohit_te.ttf telugu
mv  66-lohit-telugu.conf telugu
mv lohit_mr.ttf marathi
mv  66-lohit-marathi.conf marathi
mv lohit_mai.ttf maithili
mv  66-lohit-maithili.conf maithili
mv lohit_kok.ttf konkani
mv  66-lohit-konkani.conf konkani
mv lohit_ks.ttf kashmiri
mv  66-lohit-kashmiri*.conf kashmiri
mv lohit_ne.ttf nepali
mv  67-lohit-nepali.conf nepali
mv lohit_sd.ttf sindhi
mv  66-lohit-sindhi*.conf sindhi
cd ..
tar -cf lohit-fonts-$ver.tar lohit-fonts-$ver
gzip lohit-fonts-$ver.tar
rm -rf lohit-fonts-$ver
