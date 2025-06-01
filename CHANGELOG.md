# Changelog

All notable changes to this homelab repository will be documented in this file.

## [2025-06-01]

### Added

- `scripts/backup-to-truenas.sh`: New SSH-based rsync script for backing up `/home/bret` to TrueNAS SCALE

- `notes/backup-to-truenas.md`: Documentation for updated backup method

- SSH key-based authentication instructions

- Boot optimization by removing NFS auto-mount in `/etc/fstab`

### Removed

- Old NFS-dependent `daily_backup.sh` script and references

### Fixed

- Slow boot issue caused by `mnt-truenas.mount` hanging on startup
