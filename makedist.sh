#!/bin/sh

echo Creating tarball of Checked Out Lohit Font files distribution
date1=`date +%Y%m%d`
echo $date1
cp -r ../lohit /tmp/lohit-fonts-svnsnap-$date1
rm -rf /tmp/lohit-fonts-svnsnap-$date1/.git
mv /tmp/lohit-fonts-svnsnap-$date1 .

tar -cf lohit-fonts-svnsnap-$date1.tar lohit-fonts-svnsnap-$date1
gzip lohit-fonts-svnsnap-$date1.tar
rm -rf lohit-fonts-svnsnap-$date1
mkdir lohit-ttf-$date1

sh generate.sh
cp ChangeLog ChangeLog.old
#for generating binary tar ball
for i in assamese bengali devanagari gujarati  kannada  malayalam  marathi nepali odia  gurmukhi  tamil tamil-classical telugu 
do
ver=`cat $i/ChangeLog | grep "Current Version :-" | awk '{ print $4}'`
mkdir lohit-$i-ttf-$ver
cp COPYRIGHT OFL.txt ChangeLog.old README README.git AUTHORS $i/* lohit-$i-ttf-$ver
cp $i/*.ttf lohit-ttf-$date1
rm -rf lohit-$i-ttf-$ver/.git lohit-$i-ttf-$ver/*.sfd
tar -cf lohit-$i-ttf-$ver.tar lohit-$i-ttf-$ver
gzip lohit-$i-ttf-$ver.tar
rm -rf lohit-$i-ttf-$ver
done

cp COPYRIGHT OFL.txt lohit-ttf-$date1/
tar -cf lohit-ttf-$date1.tar lohit-ttf-$date1/
gzip lohit-ttf-$date1.tar
rm -rf lohit-ttf-$date1


#for generating source tar ball
for i in assamese bengali devanagari gujarati  kannada  malayalam marathi nepali  odia  gurmukhi  tamil tamil-classical telugu
do
ver=`cat $i/ChangeLog | grep "Current Version :-" | awk '{ print $4}'`
mkdir lohit-$i-$ver
cp COPYRIGHT OFL.txt ChangeLog.old README README.git AUTHORS Makefile generate.pe $i/* lohit-$i-$ver
rm -rf lohit-$i-$ver/.git
rm -rf lohit-$i-$ver/*.ttf
tar -cf lohit-$i-$ver.tar lohit-$i-$ver
gzip lohit-$i-$ver.tar
rm -rf lohit-$i-$ver
done

rm -rf release_tar
mkdir  release_tar
mv *.tar* release_tar
rm ChangeLog.old
rm -rf */*.ttf
