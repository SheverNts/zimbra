#!/bin/bash
while read email
do
/opt/zimbra/bin/zmmailbox -z -m $email getRestURL "//?fmt=tgz" > /backup/EMAIL_CLOSED_BKP/$email.tgz
sleep 2
done < emaillist.txt
