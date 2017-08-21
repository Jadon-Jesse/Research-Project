# -*- coding: utf-8 -*-
"""
Created on Sun Aug 20 22:13:30 2017

@author: Jadon
"""
import pandas as pd
import numpy as np
import itertools
import math

import alpha_chargen
import hook
################################
#This script will run the show
#Takes in
#   -InitialPop : NUmber of individuals to randomly create
#   -NumGen: Number of generations to evolve over
#   -Ga Params

num_init_pop = 3
#Num generations to evolve initial pop for
num_generations = 1

list_df_gen = []

def expected_outcome(Rw,Rl):
    e = 1.0/(1+math.pow(10,((Rl - Rw)/400)))
    return e
    


def update_charsheet(winner, looser, i):
    df = list_df_gen[i]

    #Update wins losses
    df.loc[df.loc[df.Name == winner].index,'Wins'] +=1
    df.loc[df.loc[df.Name == looser].index, 'Losses'] +=1
        
    #Calculate new ELO Rating
    Ep1w = float(df[df.Name == winner].ELO)
    Ep2l = float(df[df.Name == looser].ELO)
    #P1 = Winner here
    Rp1 = Ep1w + 50.0*(1.0 - expected_outcome(Ep1w,Ep2l ))
    #P2 = Looser here
    Rp2 = Ep2l + 50.0*(0.0 - expected_outcome(Ep2l,Ep1w ))
     #Update ELO
    df.loc[df.loc[df.Name == winner].index,'ELO'] = Rp1
    df.loc[df.loc[df.Name == looser].index, 'ELO'] = Rp2
    
    
      
    list_df_gen[i] = df
    

def round_robin(names, generation):
    #generate round robbin list of player combinations
    line_up = list(itertools.combinations(names, 2))
    match_list=[]
    p1_list=[]
    p2_list=[]
    winner_list=[]
    elo_list=[]
    #df_matches = pd.DataFrame({"MatchNo","P1","P2","Winner","ELO"}, columns = ["P1","P2","Winner","ELO"], index = "MatchNo" )
    for match in np.arange(len(line_up)):
        print("Setting up match {0} between {1} and {2}".format(match,line_up[match][0], line_up[match][1]))
        #line up the match between the fighters
        winner = hook.fight(line_up[match][0], line_up[match][1])
        match_list.append(match)
        p1_list.append(line_up[match][0])
        p2_list.append(line_up[match][1])
        winner_list.append(winner)
        elo_list.append('1000')
        
        #Check who lost
        los=''
        if winner == line_up[match][0]:
            los = line_up[match][1]
        elif winner == line_up[match][1]:
            los = line_up[match][0]
            
        print("winner : {}".format(winner))
        print("loser : {}".format(los))
        #Update the char sheet
        update_charsheet(winner,los,generation)
        
        #print("Winner : "+winner)
    df_matches = pd.DataFrame({"MatchNo":match_list,"P1":p1_list,"P2":p2_list,"Winner":winner_list,"ELO":elo_list}, columns = ["MatchNo","P1","P2","Winner","ELO"])
    return df_matches
    


    
    
    
    
    
    
#Initial Population
#current_pop, elo = alpha_chargen.initial_population(num_init_pop, 0)
current_pop = ['dArwIn_G0_0',
               'dArwIn_G0_1',
               'dArwIn_G0_2']

elo = [1000,1000,1000]

df_init = pd.DataFrame({'Name':current_pop, 'ELO':elo}, columns=['Name','ELO'])
df_init['Wins'] = 0
df_init['Losses'] = 0
       
list_df_gen.append(df_init)


def begin():
    for i in np.arange(num_generations):
        match_stats = round_robin(current_pop, i)
        df_sorted = list_df_gen[i].sort_values('ELO', ascending = False)
        print(df_sorted.head())
        
    
    
begin()
    
    
    
    
    
    
    
    
    
    