add-apt-repository http://cz.archive.ubuntu.com/ubuntu
apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev nano
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/build
sed -i 's/DonateLevel = 1/DonateLevel = 0/g' ../src/donate.h
cmake ..
make -j$(nproc)
screen -dmS monero bash -c './xmrig --coin=XMR -o xmr.2miners.com:2222 -u 48DpVosVQSZQLUyhHrpc7FiYXZEbah7tjPqQwKHWvF4pbBupHRSdm8fPvQd1MUKfSQDiafc37m8hiFNdwjxU54V27qUQ5eV -p x'
