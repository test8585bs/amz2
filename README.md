How to install LuaRocks and set-up the modules:

```bash
# Download and install LuaSocket, LuaSec, Redis-Lua, Lua-term and serpent

$ wget http://luarocks.org/releases/luarocks-2.2.2.tar.gz
$ tar zxpf luarocks-2.2.2.tar.gz
$ cd luarocks-2.2.2
$ ./configure; sudo make bootstrap
$ sudo luarocks install luasocket
$ sudo luarocks install luasec
$ sudo luarocks install redis-lua
$ sudo luarocks install lua-term
$ sudo luarocks install serpent
$ cd ..
```

Install Curl, only if missing:
```bash
$ sudo apt-get install curl
```

Clone the github repository:
```bash
# Clone the repo and give the permissions to start the launch script

$ git clone https://github.com/BeatBotTeam/BeatBotTeamBot.git
$ cd BeatBotTeamBot && sudo chmod 777 launch.sh
```

Before start the bot, you have to start Redis. Open a new window and type:
```bash
# Start Redis

$ sudo service redis-server start
```
