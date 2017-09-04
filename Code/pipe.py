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
import matplotlib.pyplot as plt
from subprocess import Popen

import alpha_chargen
import hook
import parse_file
################################
#This script will run the show
#Takes in
#   -InitialPop : NUmber of individuals to randomly create
#   -NumGen: Number of generations to evolve over
#   -Ga Params



def expected_outcome(Rw,Rl):
    e = 1.0/(1+math.pow(10,((Rl - Rw)/400)))
    return e
    


def update_charsheet(winner, looser, i):
    df = list_df_gen[i]
    
    #if draw darN == draw darM match
    winsp = winner.split(" ")
    losp = looser.split(" ")
    
    if winsp[0] == losp[0]:
        print("Draw between {0} and {1}".format(winsp[1], losp[1]))
        
        
    else:
        #Update wins losses
        df.loc[df.loc[df.Name == winner].index,'Wins'] +=1
        df.loc[df.loc[df.Name == looser].index, 'Losses'] +=1
              
        #Update Total_Matches Played
        df.loc[df.loc[df.Name == winner].index,'Total_Matches'] +=1
        df.loc[df.loc[df.Name == looser].index,'Total_Matches'] +=1
            
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


def build_cmds(round_list, gen):
    mugen_exe = '"C:/Users/Jadon/Work Space 4Y/RP/MUGEN/mugen-1.0/mugen/mugen.exe"'
    num_rounds = 1
    logs=[]
    cmds = []
    for i in np.arange(len(round_list)):
        log_i =  '"C:/Users/Jadon/Work Space 4Y/RP/Code/Logs/G{0}_{1}.txt"'.format(gen,i)
        x = "{0} -log {1} -p1 {2} -p2 {3} -p1.ai 1 -p2.ai 1 -rounds {4} -nojoy -nosound".format(mugen_exe,log_i, round_list[i][0], round_list[i][1], num_rounds)
        cmds.append(x)
        logs.append(log_i)
    return cmds, logs

def get_winlos(logs):
    who_won =  "-1"
    who_lost ="-1"
    
    winner="-1"
    looser ="-1"

    win_l=[]
    los_l=[]
    
    for i in np.arange(len(logs)):
        file_quotes = logs[i]
        #strip oytter pair of quotes 
        file = file_quotes[1:-1]
        with open(file) as f:
            for line in f:
                #Draw Game
                if "winningteam = 0\n" in line:
                    who_won = "0"
                    who_lost = "0"
                #TEam 1 Wins
                if "winningteam = 1\n" in line:
                    who_won = "1"
                    who_lost="2"
                #Team 2 wins
                if "winningteam = 2\n" in line:
                    who_won = "2"
                    who_lost = "1"
                #if draw then consider both as losses so elo stays same for them
                if who_won =="0" and who_lost =="0":
                    #append flags
                    #get both chars name
                    get_drwp1= "p1"+".name ="
                    if line.find(get_drwp1)==0:
                        drw_split = line.split('=')
                        draw = drw_split[-1]
                        name="draw "+str(draw.strip())
                        win_l.append(name)
                    get_drwp2= "p2"+".name ="    
                    if line.find(get_drwp2)==0:
                        drw_split = line.split('=')
                        draw = drw_split[-1]
                        name="draw "+str(draw.strip())
                        los_l.append(name)
                        
                #otherwise get winner and looser
                else:
                    get_win = "p"+str(who_won)+".name ="
                    get_los = "p"+str(who_lost)+".name ="
                    if line.find(get_win)==0:
                        win_split = line.split('=')
                        winner = win_split[-1]
                        win_l.append(winner.strip())
                    if line.find(get_los)==0:
                        los_split = line.split('=')
                        looser = los_split[-1]
                        los_l.append(looser.strip())
    return win_l, los_l

    
def round_robin_parallel(names, generation):
    #generate round robbin list of player combinations
    line_up = list(itertools.combinations(names, 2))
    
    #get list of commands to parallelize
    commands, logs = build_cmds(line_up, generation)
    mugen_dir = 'C:/Users/Jadon/Work Space 4Y/RP/MUGEN/mugen-1.0/mugen/'
    
    # run in parallel
    processes = [Popen(cmd, shell=True, cwd = mugen_dir) for cmd in commands]
    # do other things here..
    print("doing stuff")
    # wait for completion
    for p in processes: 
        p.wait()
        
    #get ALL winners and losers from logs for that generation
    #winlist, loslist = get_winlos(logs)
    winlist,loslist = get_winlos(logs)
    

    #Update the char sheet in sequence
    for i in np.arange(len(winlist)):
        
        update_charsheet(winlist[i],loslist[i],generation)
        
        #print("Winner : "+winner)
   

    
    
    
    
    
    

elite_rate = 0.1
new_rate = 0.1
crossover_rate = 0.8

mutation_rate = 0.001

def tourn_sel(df):
    r = random.sample(range(0,len(df)),4)
    p1=""
    p2=""
    if df.loc[r[0]].ELO > df.loc[r[1]].ELO:
        p1 = df.loc[r[0]].Name
    if df.loc[r[0]].ELO < df.loc[r[1]].ELO:
        p1 = df.loc[r[1]].Name
    if df.loc[r[2]].ELO > df.loc[r[3]].ELO:
        p2 = df.loc[r[2]].Name
    if df.loc[r[2]].ELO < df.loc[r[3]].ELO:
        p2 = df.loc[r[3]].Name
                   
    return p1, p2

def nu_gen(df,size,nextgen):
    # get elite individuals and addem to our new df 
    num_elite = 1 #nt(math.ceil(elite_rate*size))
    
    #create new DF to hold the new population
    new_pop = []
    df_newPop = pd.DataFrame(columns=['Name','ELO','Wins','Losses','Total_Matches'])
    
    
    
    #Append the elite individuals with their exsisting ratings n stuff to the new pop
    df_newPop = df_newPop.append(df[0:num_elite])

    #Perform genertoc operation of crossover 
    #num of time to run loop
    num_fover = 2#int(math.floor(crossover_rate * size))
    loop = int(num_fover/2)
    for i in np.arange(loop):
        #choose parents possibly tournment selection later
        print("creating kids")
        #r = random.sample(range(0,len(df)),2)
        par1,par2 = tourn_sel(df)
        #par1 = df.loc[r[0]].Name
        #par2 = df.loc[r[1]].Name
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
        matches = 0
        dfa = pd.DataFrame({'Name':[aname], 'ELO':[elo], 'Wins':[winlos], 'Losses':[winlos], 'Total_Matches':[matches]}, columns=['Name','ELO','Wins','Losses', 'Total_Matches'])
        dfb = pd.DataFrame({'Name':[bname], 'ELO':[elo], 'Wins':[winlos], 'Losses':[winlos], 'Total_Matches':[matches]}, columns=['Name','ELO','Wins','Losses', 'Total_Matches'])
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
             matches=0
             #create the new individual randomly
             alpha_chargen.spawn_randomly(name_nu)
             df_nu = pd.DataFrame({'Name':[name_nu], 'ELO':[elo_nu], 'Wins':[winl], 'Losses':[winl],'Total_Matches':[matches]}, columns=['Name','ELO','Wins','Losses','Total_Matches'])
             df_newPop = df_newPop.append(df_nu, ignore_index=True)
    
    print("generation "+str(nextgen)+" complete!")
    print("Num survived : {0} ".format(num_elite))
    print("New children : {0} ".format(num_fover))
    print("New Inds : {0} ".format(num_nu))
    
    return df_newPop
        
    

num_init_pop = 4
#Num generations to evolve initial pop for
num_generations = 5

list_df_gen = []

#Initial Population
current_pop, elo = alpha_chargen.initial_population(num_init_pop, 0)
#current_pop = ['dArwIn_G0_0',
#           'dArwIn_G0_1',
#           'dArwIn_G0_2']

#elo = [1000,1000,1000]

df_init = pd.DataFrame({'Name':current_pop, 'ELO':elo}, columns=['Name','ELO'])
df_init['Wins'] = 0
df_init['Losses'] = 0
df_init['Total_Matches']=0
   
list_df_gen.append(df_init)
ratio=[]
    
for i in np.arange(num_generations):
    print("Generation : "+str(i))
    #fight chars in round robbin
    round_robin_parallel(current_pop, i)
    #m = round_robin(current_pop,i)
    #Sort our current pupulation interms of ELO
    df_sorted = list_df_gen[i].sort_values('ELO', ascending = False)
    #print(df_sorted.head())
    #Get last elo
    v = df_sorted.iloc[-1].ELO
    ratio.append(v)

    #Only replace population if were not on the last generation
    if i < num_generations-1:        
        #hah! Get it?
        new_pop = nu_gen(df_sorted, len(df_sorted),i+1)
        #replace current pop with new pop
        current_pop = new_pop.Name.tolist()
        #keep track
        list_df_gen.append(new_pop)
    #On last generation... do some stuff with the list of dfs
    elif i == num_generations-1:
        print("DONE!")
        plt.scatter(range(0,len(ratio)), ratio)
        plt.title("Lowest ELO per Generation")
        plt.xlabel("Generation")
        plt.ylabel("ELO")
        plt.show()
    

    
    
    
    
    
    
    
    
    