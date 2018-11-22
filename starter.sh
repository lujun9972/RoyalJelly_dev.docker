#!/usr/bin/env bash

# update RoyalJelly
if [[ ! -d /root/RoyalJelly/.git ]];then
    git clone git@git.coding.net:baopullon/RoyalJelly.git /root/RoyalJelly
else
    cd /root/RoyalJelly
    git pull
fi

# package service
cd /root/RoyalJelly && mvn package -DskipTests

exec bash
