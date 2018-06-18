#!/bin/bash
echo "Docker ImgCash wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/ 

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
IMGC: Mv1u71zb39SapAB3khVCNHhpLUsYu2kWBy"

config="/config/imgcash.conf"
if [ -f "$config" ]
then
    echo "Using $config"
    cp $config /data/.imgcashcore/imgcash.conf
fi

wallet="/config/wallet.dat"
if [ -f "$wallet" ]
then
    echo "Using $wallet"
    cp $wallet /data/.imgcashcore/wallet.dat
fi

echo "Starting IMGC daemon..."
imgcashd
