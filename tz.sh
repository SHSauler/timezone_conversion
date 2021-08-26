#!/bin/bash
tzs=('UCT' 'Europe/Berlin' 'US/Eastern' 'US/Mountain' 'US/Pacific' 'Asia/Hong_Kong')
dt=$(date +%y-%m-%d -d "$1")
echo -ne "$dt "
for t in ${tzs[@]}; do
   tm=$(TZ=$t date +%R%Z -d "$1")
   echo -ne "$tm "
done
echo ""
