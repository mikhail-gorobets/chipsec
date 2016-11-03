#!/bin/bash

script=chipsec-remote.sh
dst_service=/etc/systemd/system/chipsec.service
src_service=./chipsec.service

if [ -f $src_service ]; then
    sudo cp -f ./$script /root/$script
    sudo cp -f $src_service $dst_service
    sudo sed -i "s/__script__/\/root\/$script/g" $dst_service
    sudo systemctl enable $dst_service
    sudo systemctl start chipsec.service
fi
