# Backup To TrueNAS Via Rsync Over SSH

This document explains the current backup process used to protect files on my Linux Mint PC by securely syncing them to a mirrored dataset on my TrueNAS SCALE machine using `rsync` over SSH.

## Backup Script

The script located at [`scripts/backup-to-truenas.sh`](../scripts/backup-to-truenas.sh) performs a secure, incremental backup of the entire `/home/bret/` directory directly to the TrueNAS SCALE system using SSH key authentication.

### Script Contents

```bash
#!/bin/bash

echo "Starting rsync backup to TrueNAS at $(date)" >> ~/rsync_backup.log

rsync -avh --delete /home/bret/ truenas_admin@192.168.1.143:/mnt/backup_pool/backup/ >> ~/rsync_backup.log 2>&1

echo "Finished rsync backup at $(date)" >> ~/rsync_backup.log
```

## SSH Authentication

This script uses SSH key-based authentication for the `truenas_admin` user. The public key from the Linux Mint PC has been added to the `authorized_keys` file on the TrueNAS SCALE system, enabling secure, passwordless backups.

## Destination

The rsync target path is:

```
192.168.1.143:/mnt/backup_pool/backup/
```

This location resides on a ZFS mirror pool on the TrueNAS server, providing redundancy and fault tolerance.

## Behavior Summary

- Mirrors the entire `/home/bret/` directory

- Deletes files from the destination if they no longer exist on the source

- Appends detailed logs and timestamps to `~/rsync_backup.log`
