# !/usr/bin/python
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

import os,sys,subprocess

def auto_test(txt_file,ttf_file):
	inputfile=open(txt_file)
	outputfile=open("failed_test_case.txt","w")

	#Read the test-case input
	flines=inputfile.readlines()
	count=0

	#Exceute hb-shape command for each test-case from output file
	for string in flines:
		words=string.split()
		status, output = subprocess.getstatusoutput("hb-shape %s %s"%(ttf_file,words[0]))
		# Test to check, wheather test-case from output file & the result, are matching
		if words[1] != output:
			print(words[0]+ " [FAILURE]\n")
			outputfile.write("  *  "+words[0]+"\t"+""+output+"\n")
			count=count+1

	#Count for failed test-cases
	print("%d Test Cases Failed out of %d"%(count,len(flines)))
	print("failed_test_case.txt file generated !!")
	inputfile.close()
	outputfile.close()
	return count

if __name__ == "__main__":

	if len(sys.argv) < 3:
		print(" USAGE: python test.py <test file> <font_file> ")
	else:
		txt_file = sys.argv[1]
		font_file = sys.argv[2]
		count = auto_test(txt_file,font_file)
		if count == 0:
			sys.exit(0)
		else:
			sys.exit(1)

