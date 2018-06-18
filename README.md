# docker-imgcash
Wallet and daemon for ImgCash [IMGC] cryptocurrency on docker

# Quickstart
Type `docker run -it joshendriks/imgcash` and see the wallet starting.

```
Docker imgcash wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
IMGC: Mv1u71zb39SapAB3khVCNHhpLUsYu2kWBy

Starting IMGC daemon...
```

# Proper start
Use a volume to store all data. The image stores it's data in `/data`. So mapping that volume will do the trick.

Additionally you can override the config and wallet file using volumes pointing to `/config/imgcash.conf` and `/config/wallet.data`

# Donations:
BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk

IMGC: Mv1u71zb39SapAB3khVCNHhpLUsYu2kWBy

# License
MIT, see LICENSE file