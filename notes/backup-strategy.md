# Backup Strategy

This document explains the backup process used to protect files on my Linux Mint PC by syncing them to my TrueNAS machine.

## Daily Backup Script

The script located at [`scripts/daily_backup.sh`](../scripts/daily_backup.sh) runs an `rsync` command to mirror the `/home/bret` directory to a mounted backup location on TrueNAS:

```bash
rsync -avh --delete /home/bret /mnt/truenas/backup/ >> ~/rsync_backup.log 2>&1
```
