git clone https://github.com/radiantblockchain/rad-bfgminer.git
cd rad-bfgminer
# Replace the github paths or the ./autogen.sh script fails since it checks out git submodules that can hang socket timeout
git config --global url.https://github.com/.insteadOf git://github.com/
./autogen.sh
./configure --enable-opencl
make

./bfgminer -S opencl:auto -o http://master.radiantblockchain.org:7332 -u thunder -p x --set-device OCL:kernel=poclbm --coinbase-sig rad-bfgminer-misc --generate-to 1NK8SqxhSmQLqU6Q3a8wjB7i2qvmBna45c 
