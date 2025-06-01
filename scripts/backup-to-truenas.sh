#!/bin/bash

# backup-to-truenas.sh
# Back up the user's home directory directly to TrueNAS SCALE over SSH.
# Intended to be run manually or on a schedule via cron.

echo "Starting rsync backup to TrueNAS at $(date)" >> ~/rsync_backup.log

rsync -avh --delete /home/bret/ truenas_admin@192.168.1.143:/mnt/backup_pool/backup/ >> ~/rsync_backup.log 2>&1

echo "Finished rsync backup at $(date)" >> ~/rsync_backup.log
