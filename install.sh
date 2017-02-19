sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get install git
git pull
wget http://luarocks.org/releases/luarocks-2.2.2.tar.gz
tar zxpf luarocks-2.2.2.tar.gz
cd luarocks-2.2.2
./configure; sudo make bootstrap
sudo luarocks install luasocket
sudo luarocks install luasec
sudo luarocks install redis-lua
sudo luarocks install lua-term
sudo luarocks install serpent
sudo apt-get install curl
sudo service redis-server start
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip git redis-server autoconf g++ libjansson-dev libpython-dev expat libexpat1-dev
