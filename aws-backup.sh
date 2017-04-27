#!/bin/bash
logpath=/home/denten/logs/backup.log
stamp="$(date)"

echo "last backup attempt on $stamp" > $logpath
wall "Commencing AWS S3 backup from ~/bin/aws-backup.sh. For log files see ~/log/backup.log"

aws s3 sync ~/Documents s3://darkstar-backup --exclude "*.git/*" >> $logpath
