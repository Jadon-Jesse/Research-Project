# -*- coding: utf-8 -*-
"""
Created on Tue Aug  8 20:17:58 2017

@author: Jadon
"""

import subprocess
#p = subprocess.Popen([command, argument1,...], cwd=working_directory)
#p.wait() 

char_one = "kfm"
char_two = "kfm2"
filename = "matchout.txt"
num_rounds = "1"


#-log matchstats.txt -p1 <p1_name> -p2 <p2_name> -p1.ai 1 -p2.ai 1 -rounds 1
#Have to keep the quotes for the cmd 
mugen_exe = '"C:/Users/Jadon/Work Space 4Y/RP/MUGEN/mugen-1.0/mugen/mugen.exe"'

mugen_dir = "C:/Users/Jadon/Work Space 4Y/RP/MUGEN/mugen-1.0/mugen/"
log = '"C:/Users/Jadon/Work Space 4Y/RP/Code/{0}"'.format(filename)
x = "{0} -log {1}-p1 {2} -p2 {3} -p1.ai 1 -p2.ai 1 -rounds {4}".format(mugen_exe,log, char_one, char_two, num_rounds)
print(x)
p = subprocess.call(x, cwd = mugen_dir )

