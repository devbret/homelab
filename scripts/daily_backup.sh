#!/bin/bash

# daily_backup.sh
# This script backs up the user's home directory to a mounted TrueNAS share.
# Run daily via cron or manually. Output is appended to rsync_backup.log.

rsync -avh --delete /home/bret /mnt/truenas/backup/ >> ~/rsync_backup.log 2>&1