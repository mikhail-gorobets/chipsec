#!/bin/bash

screen -S chipsec -d -m sleep 5 | python /home/user/chipsec/chipsec_main.py -i -m tools.remote -a localhost:5000
