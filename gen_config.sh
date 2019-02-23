#!/bin/bash

cat  << EOF
rpcuser=$USER
rpcpassword=$PASSWORD
rpcallowip=$RPCALLOW
rpcport=6666
txindex=1
addnode=18.224.6.19:6998
addnode=128.0.129.72:6998
addnode=176.197.219.198:6998
addnode=178.33.116.134:6998
addnode=18.224.6.19:6998
addnode=192.95.33.131:6998
addnode=46.105.62.116:6998
addnode=54.36.214.50:6998
addnode=66.42.60.193:6998
addnode=[2002:4f87:c819::4f87:c819]:6998
addnode=139.180.219.195:6888
addnode=75.144.195.68:6888
addnode=23.101.61.34:6888
addnode=18.216.217.124
addnode=139.180.204.127:6888
addnode=45.32.135.211:6888
maxconnetions=50
zmqpubhashblock=tcp://*:5555
EOF