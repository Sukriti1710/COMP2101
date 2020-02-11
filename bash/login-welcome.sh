#!/bin/bash

###############
# Variables   #
###############
title="Overlord"
usernames="$USER"
hostname="$(hostname)"
day=$(date +%A)
currenttime=$(date +%I:%M\ %p)
###############
# Main        #
###############
if [ "$day" = Monday ];then
cows="Welcome to planet $hostname, MOtivational $usernames!"
elif [ "$day" = Tuesday ];then
cows="Welcome to planet $hostname, Terrific $usernames!"
elif [ "$day" = Wednesday ];then
cows="Welcome to planet $hostname, Warmy $usernames!"
elif [ "$day" = Thursday ];then
cows="Welcome to planet $hostname, Thoughful $usernames!"
elif [ "$day" = Friday ];then
cows="Welcome to planet $hostname, Funny $usernames!"
elif [ "$day" = Saturday ];then
cows="Welcome to planet $hostname, Beautiful $usernames!"
else
cows="Welcome to planet $hostname, Sunny $usernames!"
fi
cowsay "$cows It is $currenttime on $day ."
