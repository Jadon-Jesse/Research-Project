# -*- coding: utf-8 -*-
"""
Created on Sun Aug 20 22:13:30 2017

@author: Jadon
"""
import pandas as pd
import numpy as np
import itertools
import math
import random

import alpha_chargen
import hook
import parse_file
################################
#This script will run the show
#Takes in
#   -InitialPop : NUmber of individuals to randomly create
#   -NumGen: Number of generations to evolve over
#   -Ga Params

num_init_pop = 10
#Num generations to evolve initial pop for
num_generations = 2

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
    


    
    
    
    
    
    

elite_rate = 0.1
new_rate = 0.1
crossover_rate = 0.8

mutation_rate = 0.001

def nu_gen(df,size,nextgen):
    # get elite individuals and addem to our new df 
    num_elite = int(math.ceil(elite_rate*size))
    
    #create new DF to hold the new population
    new_pop = []
    df_newPop = pd.DataFrame(columns=['Name','ELO','Wins','Losses'])
    
    
    
    #Append the elite individuals with their exsisting ratings n stuff to the new pop
    df_newPop = df_newPop.append(df[0:num_elite])

    #Perform genertoc operation of crossover 
    #num of time to run loop
    num_fover = int(math.floor(crossover_rate * size))
    loop = int(num_fover/2)
    for i in np.arange(loop):
        #choose parents possibly tournment selection later
        print("creating kids")
        r = random.sample(range(0,len(df)),2)
        par1 = df.loc[r[0]].Name
        par2 = df.loc[r[1]].Name
        #generate their childrens moves
        child_amoves, child_bmoves = parse_file.create_children(par1,par2, 0.5)
        aid = str(i)+"a"
        bid = str(i)+"b"
        #spawn children
        aname = alpha_chargen.spawn_child(nextgen, child_amoves, aid)
        bname = alpha_chargen.spawn_child(nextgen, child_bmoves, bid)
        print("done")
        new_pop.append(aname)
        new_pop.append(bname)
        #create temp dfs
        winlos = 0
        elo = 1000
        dfa = pd.DataFrame({'Name':[aname], 'ELO':[elo], 'Wins':[winlos], 'Losses':[winlos]}, columns=['Name','ELO','Wins','Losses'])
        dfb = pd.DataFrame({'Name':[bname], 'ELO':[elo], 'Wins':[winlos], 'Losses':[winlos]}, columns=['Name','ELO','Wins','Losses'])
        df_newPop = df_newPop.append(dfa, ignore_index=True)
        df_newPop = df_newPop.append(dfb, ignore_index=True)
     

    #now create new individiuals if necessary
    #....
    num_nu = size  - (num_elite + num_fover)
    if num_nu==0:
        print('No new individuals created')
    elif num_nu>0:
        for ind in np.arange(num_nu):
             name_nu = "dArwIn_G{0}_{1}".format(nextgen,ind)
             elo_nu = 1000
             winl = 0
             #create the new individual randomly
             alpha_chargen.spawn_randomly(name_nu)
             df_nu = pd.DataFrame({'Name':[name_nu], 'ELO':[elo_nu], 'Wins':[winl], 'Losses':[winl]}, columns=['Name','ELO','Wins','Losses'])
             df_newPop = df_newPop.append(df_nu, ignore_index=True)
    
    print("generation "+str(nextgen)+" complete!")
    print("Num survived : {0} ".format(num_elite))
    print("New children : {0} ".format(num_fover))
    print("New Inds : {0} ".format(num_nu))
    
    return df_newPop
        
    
#Initial Population
current_pop, elo = alpha_chargen.initial_population(num_init_pop, 0)
#current_pop = ['dArwIn_G0_0',
#           'dArwIn_G0_1',
#           'dArwIn_G0_2']

#elo = [1000,1000,1000]

df_init = pd.DataFrame({'Name':current_pop, 'ELO':elo}, columns=['Name','ELO'])
df_init['Wins'] = 0
df_init['Losses'] = 0
   
list_df_gen.append(df_init)
    
for i in np.arange(num_generations):
    print("Generation : "+str(i))
    match_stats = round_robin(current_pop, i)
    #Sort our current pupulation interms of ELO
    df_sorted = list_df_gen[i].sort_values('ELO', ascending = False)
    print(df_sorted.head())
    #hah! Get it?
    new_pop = nu_gen(df_sorted, len(df_sorted),i+1)
    
    #replace current pop with new pop
    current_pop = new_pop.Name.tolist()
    #keep track
    list_df_gen.append(new_pop)
    
    
    
    
    
    
    
    
    