# XenMinerLoader
Automatic Loader of miner.py with address change and threads amount

##########################################

# XenMinerLoader by HannesCrypto_Version 1.0

##########################################




First of all you have to install all requirements to run this script see here the originall Github Site from JackLevin74
.
## https://github.com/jacklevin74/xenminer/tree/main
.

Second load up my Github via the command

## git clone https://github.com/hannescrypto/XenMinerLoader


Now there are two files which i coded


##########################################

# XenMinerLoader.sh

##########################################

Config: open the file with an editor and change myethaddress and if you like coresautostart


This File is the main File which does all the magic

1.) script downloads the latest miner.py from Jacks Github
    => you can choose between loading new, or using existing miner.py

2.) now the script changes from the miner.py jacks ethaddress with your ethaddress

3.) now the script reads for safty reason all 0x addresses shown in the miner.py so you can verify that in the actual file is your address shown

4.) now the script asks you how many threads you wanna start of the miner.py

5.) if these all is done the script starts 1 tmux sesson with the amount of threads you put in + 1 window called INFO there the info tool htop in simplemode is started where you can see the CPU load / Ram load 

start script with

start terminal

### bash XenMinerLoader/XenMinerLoader.sh


##########################################

# stopMiner.sh

##########################################


This File has only on function => stop all tmux sessions/windows and therefor also the XenMinerLoader

start script with

start terminal 

### bash XenMinerLoader/stopMiner.sh


have fun guys
hannescrypto
