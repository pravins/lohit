#!/usr/bin/python
# -*- coding: UTF-8 -i*-
# Copyright (C) 2013-14, Sneha Kore <skore@redhat.com>, Pravin Satpute <psatpute@redhat.com>
# This script requires hb-shape utility from available in harfbuzz-devel rpm

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

import os, sys, subprocess

def generate_stdfile(txt_file,ttf_file):
	inputfile=open(txt_file)
	outputfile=open("std-test-out.txt","w")

	#Read the test-case input
	flines=inputfile.readlines()

	#Exceute hb-shape command for each test-case from input file
	for string in flines:
		#print "String : "+string
		words=string.split()
		status, output = subprocess.getstatusoutput("hb-shape %s %s"%(ttf_file,words[0]))
		# Write output to the output file
		# print "Output : "	+output+"\n"
		outputfile.write(words[0]+"\t"+""+output+"\n")
	print("std-test-out.txt file generated!!")
	outputfile.close()
	inputfile.close()



if __name__ == "__main__":

 if len(sys.argv) < 3:
        print(" USAGE: python generate_test.py <test file> <font_file> ")
 else:
        txt_file = sys.argv[1]
        font_file = sys.argv[2]
        generate_stdfile(txt_file,font_file)
