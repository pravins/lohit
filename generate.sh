#!/bin/sh
test -d TTFfiles || mkdir TTFfiles
./generate.pe *.sfd
cd TTFfiles
mv Lohit-Bengali.ttf lohit_bn.ttf
mv Lohit-Hindi.ttf lohit_hi.ttf
mv Lohit-Malayalam.ttf lohit_ml.ttf 
mv Lohit-Punjabi.ttf  lohit_pa.ttf
mv Lohit-Telugu.ttf lohit_te.ttf
mv Lohit-Gujarati.ttf lohit_gu.ttf
mv Lohit-Kannada.ttf lohit_kn.ttf
mv Lohit-Oriya.ttf lohit_or.ttf
mv Lohit-Tamil.ttf lohit_ta.ttf
cd ..
