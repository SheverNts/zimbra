#!/bin/bash

while read list;
do
#creating user 
zmprov ca $list@example.com DwQ0kAw8NcTAqbXf  
sleep 1
#Adding mail transport to another server
zmprov ma $list@example.com zimbraMailTransport smtp:example.com.com:25
sleep 1
echo User $list was created successfully............
done < /opt/zimbra/scripts/user.txt