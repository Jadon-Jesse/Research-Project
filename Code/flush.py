# -*- coding: utf-8 -*-
"""
Created on Mon Sep  4 22:04:00 2017

@author: Jadon
"""

import numpy as np
import glob, os, shutil

#replace the select.def file
def my_super_copy():
    source = "C:/Users/Jadon/Work Space 4Y/RP/Code/CharTemplate/select.def"
    target = "C:/Users/Jadon/Work Space 4Y/RP/MUGEN/mugen-1.0/mugen/data/select.def"
    try:
        shutil.copy(source, target)
    except IOError:
        os.chmod(target, 777) #?? still can raise exception
        shutil.copy(source, target)


#First delete all characters named dArwin
def kill_darwin():
    dirs = glob.glob("C:/Users/Jadon/Work Space 4Y/RP/MUGEN/mugen-1.0/mugen/chars/dArwIn*")
    print("Removing...")
    print()
    for dir in dirs:
        print(dir)
        shutil.rmtree(dir)
    print()
    print("Done!")
    
def kill_logs():
    print("Removing logs..")
    files = glob.glob("C:/Users/Jadon/Work Space 4Y/RP/Code/Logs/*")
    for f in files:
        os.remove(f)
    


kill_darwin()
my_super_copy()
kill_logs()