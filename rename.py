#!/usr/bin/env/ python

import os, glob
#to run this, type: python rename.py

#input parameters
file_ext = '.trim' #enter the filename extension here. Make sure it's in quotation marks.
curr_dir = '/proj/kdcastil/users/ging/first_4_bases_trimmed/' #enter the directory you want it to search. Again, put in quotation marks.

file_info = []
for line in os.listdir(curr_dir):
   #print line
   if line.endswith(file_ext):
       name = line[:6]
       #remove the 1 or 2 from the end of the name
       if (name.endswith('1') or name.endswith('2')):
           name = name[:-1]
       new_list = []
       new_list.append(line)
       new_list.append(name)
       file_info.append(new_list)
#print file_info

for line in file_info:
   cmd = "sed 's:@HWI:@"+line[1]+"_:' <"+line[0]+"> "+line[0]+".named"
   os.system(cmd)