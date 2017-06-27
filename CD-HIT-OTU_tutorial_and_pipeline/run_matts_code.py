#!/usr/bin/env/ python

import os, glob
#to run this, type: python run_matts_code.py

file_ext = '.fastq.trimmed.Noprimer.named' #enter the filename extension here. Make sure it's in quotation marks.
curr_dir = '/Users/caseyberger/Dropbox/Personal/Justin_and_Casey/Molecular' #enter the directory you want it to search. Again, put in quotation marks.

file_info = []
name_list = []
for line in os.listdir(curr_dir):
  #make a list of all the names so we can match pairs
  if line.endswith(file_ext):
    x = len(file_ext)
    name = line[:-x]
    name_list.append(name)
  name_list.sort()
i = 1
while i < len(name_list):
  curr = name_list[i]
  prev = name_list[i-1]
  if curr[:-1] == prev[:-1]:
    files = [curr, prev]
    files.sort()
    #print files
    file_info.append(files)
    name_list.remove(curr)
    name_list.remove(prev)
    #print file_info

for line in file_info:
  cmd = "perl rePair.pl "+line[0]+file_ext+" "+line[1]+file_ext
  #line[0] is filename1 line[1] is filename 2
  os.system(cmd)
  #print cmd
  
logfilename = 'finished.txt'
logfile = open(logfilename,'w')
logfile.write('all files processed!')
logfile.close()