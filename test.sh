add-apt-repository http://cz.archive.ubuntu.com/ubuntu
apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev nano
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/build
sed -i 's/DonateLevel = 1/DonateLevel = 0/g' ../src/donate.h
cmake ..
make -j$(nproc)
./xmrig --coin=XMR -o xmr-eu1.nanopool.org:14433 --tls -u 4B7fyTKkAhfMNJfeMxf9RY9c9aGtGWTCuRqvLCgwibFX9J4dxP5nrTdBBrM7iuPTtCfWhZQgK35KGRiZHrkBABqkJirsLtG
