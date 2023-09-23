#!/bin/bash


####### ONLY CHANGE HERE START####### 

ethaddress="0x43709189a8c534ac2e65D01a2c8ceE56B702001A"
setthreads=4

####### ONLY CHANGE HERE END#######

githublocation="https://raw.githubusercontent.com/jacklevin74/xenminer/main/miner.py"
jacksethaddress="0x0A6969ffF003B760c97005e03ff5a9741126167A"


echo -e "##########################################"
echo -e "XenMinerLoader by hannescrypto_Version 1.0"
echo -e "##########################################"
echo -e " "
echo -e "Update MINER.PY from Jacks Github?"
echo -e "Type yes or no => 30 seconds left or auto NO"
echo -e " "
read -t 30 VARMINERPY
if [[ $VARMINERPY == "yes" ]]
then
wget -O miner.py $githublocation
fi

clear

if [ ! -f miner.py ]
then
    set -e
    echo -e "##########################################"
    echo -e "XenMinerLoader by hannescrypto_Version 1.0"
    echo -e "##########################################"
    echo -e " "   
    echo "! ! ! MINER.PY missing, exiting now ! ! !"
    read EXIT
else
    echo -e "##########################################"
    echo -e "XenMinerLoader by hannescrypto_Version 1.0"
    echo -e "##########################################"
    echo -e " "
    echo "MINER.PY found, I am doing my magic now :-)"
    echo -e " "
fi

file_contents=$(<miner.py)
echo "${file_contents//$jacksethaddress/$ethaddress}" > miner.py


echo -e "swappet out Eth-Address ! ! !"
echo -e "My Miner Ethereum address in MINER.PY read out as"
echo -e " "
grep -nr "0x" miner.py
echo -e " "


echo -e " "
echo -e "Enter number of Threads for the XENMINER"
echo -e "=> 30 seconds left or Threads: " $setthreads
echo -e " "
VAR=$setthreads
read -t 30 VAR


#### starte eine Season mit Namen + erstes Fenster ist Infoseite ####
session="XENMINER"

tmux new-session -d -s $session
tmux rename-window -t $session 'INFO'
tmux send-keys -t $session 'htop -u nobody' C-m

#### starte X Fenster mit namen M1-M.... ####

if [[ $VAR -ge 1 ]]
then
tmux new-window -t $session -n 'M1'
tmux send-keys -t $session 'python3 miner.py' C-m
fi

if [[ $VAR -ge 2 ]]
then
tmux new-window -t $session -n 'M2'
tmux send-keys -t $session 'python3 miner.py' C-m
fi

if [[ $VAR -ge 3 ]]
then
tmux new-window -t $session -n 'M3'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 4 ]]
then
tmux new-window -t $session -n 'M4'
tmux send-keys -t $session 'python3 miner.py' C-m
fi

if [[ $VAR -ge 5 ]]
then
tmux new-window -t $session -n 'M5'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 6 ]]
then
tmux new-window -t $session -n 'M6'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 7 ]]
then
tmux new-window -t $session -n 'M7'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 8 ]]
then
tmux new-window -t $session -n 'M8'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 9 ]]
then
tmux new-window -t $session -n 'M9'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 10 ]]
then
tmux new-window -t $session -n 'M10'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 11 ]]
then
tmux new-window -t $session -n 'M11'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 12 ]]
then
tmux new-window -t $session -n 'M12'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 13 ]]
then
tmux new-window -t $session -n 'M13'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 14 ]]
then
tmux new-window -t $session -n 'M14'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 15 ]]
then
tmux new-window -t $session -n 'M15'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 16 ]]
then
tmux new-window -t $session -n 'M16'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 17 ]]
then
tmux new-window -t $session -n 'M17'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 18 ]]
then
tmux new-window -t $session -n 'M18'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 19 ]]
then
tmux new-window -t $session -n 'M19'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 20 ]]
then
tmux new-window -t $session -n 'M20'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
#### wechsle zu InfoFenster und öffne aktive Session #### 

tmux select-window -t $XENMINER:0
tmux attach-session -t $session





