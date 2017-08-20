# -*- coding: utf-8 -*-
"""
Created on Sun Aug 20 19:35:05 2017

@author: Jadon
"""

#This script should act as the file parser
import numpy as np
import random
import shutil
import jinja2 as jin


char_name = "dArwIn_Neeblereena"
char_cmd = "dArwIn_Neeblereena.cmd"

src = "C:/Users/Jadon/Work Space 4Y/RP/Code/CharTemplate/kfmBlank/"
dst = "C:/Users/Jadon/Work Space 4Y/RP/MUGEN/mugen-1.0/mugen/chars/"+char_name+"/"+char_cmd

#char_dict={}
#char_ord_dict = OrderedDict()


def moves_to_list(moves):
    move_list=[]
    new_move_flag = ";---------------------------------------------------------------------------"
    arg_list=[]
    for i in np.arange(len(moves)):
        #if we see a nre_move flag
        if moves[i] == new_move_flag:
            arg_list=[]
            move_list.append(arg_list)
        
        arg_list.append(moves[i])
    return move_list

with open(dst) as f:
    content = f.readlines()
# you may also want to remove whitespace characters like `\n` at the end of each line
content = [x.strip() for x in content] 
#slice from ai gen moves onwards
content = content[293:]
moves = moves_to_list(content)

