#!/bin/sh
sudo apt update -y
sudo apt-get install libcurl4-openssl-dev -y
sudo apt-get install libssl-dev -y
sudo apt-get install libjansson-dev -y
sudo apt-get install automake -y
sudo apt-get install autotools-dev -y
sudo apt-get install build-essential -y
sudo apt install nano -y
git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git
cd ccminer
chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
./build.sh
awk '{$5 = v} 1' v="stratum+tcp://verus.aninterestinghole.xyz:9998" ~/vccphone/ccminer/run > ~/pho/ccminer/run1
awk '{$7 = v} 1' v="RTEum2NVDfQCbkSiT2GpjiZLDCeuBZik8Q.RGPL" ~/pho/ccminer/run1 > ~/pho/ccminer/run2
awk '{$11 = v} 1' v="8" ~/pho/ccminer/run2 > ~/pho/ccminer/run3
chmod +x ~/pho/ccminer/run3
ln -s ~/pho/ccminer/run3 ~/run
cd ~/pho/ccminer/
cd ~/pho/ccminer/
cd ~/pho/ccminer/
nano ~/pho/ccminer/run3
echo -E "Congrats, now run ./run3 to start mining. In the future, miner directory is: ~/vccphone/ccminer/ "
