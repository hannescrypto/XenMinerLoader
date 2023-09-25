#!/bin/bash


githublocationminer="https://raw.githubusercontent.com/jacklevin74/xenminer/main/miner.py"
githublocationconfig="https://raw.githubusercontent.com/jacklevin74/xenminer/main/config.conf"

source XenMinerLoaderCONFIG.txt
clear 

echo -e "##########################################"
echo -e "XenMinerLoader by hannescrypto_Version 1.1"
echo -e "##########################################"
echo -e " "
echo -e "Variables in Config File"
echo -e " "
echo -e "Eth Adresse: " $XenMinerLoaderEthaddress
echo -e "Threads: " $XenMinerLoaderSetThreads
echo -e "FirstStartup: "$XenMinerLoaderFirstStartup
echo -e " "

if [[ $XenMinerLoaderFirstStartup -ge 1 ]]
then
    echo -e "First startup of XenMinerLoader startet !"
    echo -e " "
    
    echo -e "Input your Eth-Address you wanna use"
    read XenMinerLoaderEthaddressBASH
    sed -i "s/XenMinerLoaderEthaddress=.*/XenMinerLoaderEthaddress=\"$XenMinerLoaderEthaddressBASH\"/" XenMinerLoaderCONFIG.txt
    echo -e " "


    echo -e "Input the amount of MINER.PY windows you wanna use"
    read XenMinerLoaderSetThreadsBASH
    sed -i "s/XenMinerLoaderSetThreads=.*/XenMinerLoaderSetThreads=\"$XenMinerLoaderSetThreadsBASH\"/" XenMinerLoaderCONFIG.txt
    echo -e " "

    source XenMinerLoaderCONFIG.txt
    echo -e "First startup of XenMinerLoader complete !"
    XenMinerLoaderFirstStartupBASH="0"
    sed -i "s/XenMinerLoaderFirstStartup=.*/XenMinerLoaderFirstStartup=\"$XenMinerLoaderFirstStartupBASH\"/" XenMinerLoaderCONFIG.txt
    echo -e " "
fi

clear
source XenMinerLoaderCONFIG.txt
echo -e "##########################################"
echo -e "XenMinerLoader by hannescrypto_Version 1.1"
echo -e "##########################################"
echo -e " "
echo -e "Variables in XenMinerLoaderCONFIG.txt"
echo -e " "
echo -e "Eth address: " $XenMinerLoaderEthaddress
echo -e "Threads: " $XenMinerLoaderSetThreads
echo -e "FirstStartup: " $XenMinerLoaderFirstStartup
echo -e " "

echo -e "Update MINER.PY from Jacks Github?"
echo -e "Type yes or no => 30 seconds left or auto NO"
echo -e " "
read -t 30 VARMINERPY
if [[ $VARMINERPY == "yes" ]]
then
wget -O miner.py $githublocationminer
wget -O config.conf $githublocationconfig

clear
fi

if [ ! -f miner.py ]
then
    set -e
    echo -e "##########################################"
    echo -e "XenMinerLoader by hannescrypto_Version 1.1"
    echo -e "##########################################"
    echo -e " "   
    echo "! ! ! MINER.PY missing, exiting now ! ! !"
    read EXIT
else
    echo -e "##########################################"
    echo -e "XenMinerLoader by hannescrypto_Version 1.1"
    echo -e "##########################################"
    echo -e " "
    echo "MINER.PY found, I am doing my magic now :-)"
    echo -e " "
fi


source config.conf
sed -i "s/account = .*/account = $XenMinerLoaderEthaddress/" config.conf

clear
echo -e "##########################################"
echo -e "XenMinerLoader by hannescrypto_Version 1.1"
echo -e "##########################################"
echo -e " "
echo -e "swappet out Eth-Address ! ! !"
echo -e "My Miner Ethereum address in MINER.PY and CONFIG.CONF read out as"
echo -e " "
grep -nr "0x" miner.py
echo -e " "
grep -nr "0x" config.conf
echo -e " "


echo -e " "
echo -e "Enter number of Threads for the XENMINER"
echo -e "From 1 threads to 40 thread"
echo -e "=> 30 seconds left or Threads: " $XenMinerLoaderSetThreads
echo -e " "
VAR=$XenMinerLoaderSetThreads
read -t 30 VAR



#### starts a tmux session ####
session="XENMINER"

tmux new-session -d -s $session
tmux rename-window -t $session 'INFO'
tmux send-keys -t $session 'htop -u nobody' C-m

#### starts x tmux windows in session 0 from M1-M40 ####

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

if [[ $VAR -ge 21 ]]
then
tmux new-window -t $session -n 'M21'
tmux send-keys -t $session 'python3 miner.py' C-m
fi

if [[ $VAR -ge 22 ]]
then
tmux new-window -t $session -n 'M22'
tmux send-keys -t $session 'python3 miner.py' C-m
fi

if [[ $VAR -ge 23 ]]
then
tmux new-window -t $session -n 'M23'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 24 ]]
then
tmux new-window -t $session -n 'M24'
tmux send-keys -t $session 'python3 miner.py' C-m
fi

if [[ $VAR -ge 25 ]]
then
tmux new-window -t $session -n 'M25'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 26 ]]
then
tmux new-window -t $session -n 'M26'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 27 ]]
then
tmux new-window -t $session -n 'M27'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 28 ]]
then
tmux new-window -t $session -n 'M28'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 29 ]]
then
tmux new-window -t $session -n 'M29'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 30 ]]
then
tmux new-window -t $session -n 'M30'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 31 ]]
then
tmux new-window -t $session -n 'M31'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 32 ]]
then
tmux new-window -t $session -n 'M32'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 33 ]]
then
tmux new-window -t $session -n 'M33'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 34 ]]
then
tmux new-window -t $session -n 'M34'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 35 ]]
then
tmux new-window -t $session -n 'M35'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 36 ]]
then
tmux new-window -t $session -n 'M36'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 37 ]]
then
tmux new-window -t $session -n 'M37'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 38 ]]
then
tmux new-window -t $session -n 'M38'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 39 ]]
then
tmux new-window -t $session -n 'M39'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 
if [[ $VAR -ge 40 ]]
then
tmux new-window -t $session -n 'M40'
tmux send-keys -t $session 'python3 miner.py' C-m
fi
 

#### wechsle zu InfoFenster und öffne aktive Session #### 

tmux select-window -t $XENMINER:0
tmux attach-session -t $session






