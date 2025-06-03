# Migrating From TrueNAS Core To TrueNAS SCALE

This document summarizes the key steps I took to successfully migrate from TrueNAS Core to TrueNAS SCALE in my homelab setup.

## 1. Backup & Prep

Before beginning the migration, I reviewed and documented my current system configuration, including network settings and all active NFS shares. While I didn’t back up the full system or export all settings, I made sure I had enough information recorded to manually recreate the setup in SCALE.

## 2. Installation

I created a bootable TrueNAS SCALE USB on my Linux Mint machine. Then I booted the target system from the USB and chose the clean install option, which wiped the existing boot device. I selected the SSD as the new boot device for SCALE. The installation process completed smoothly, and the system rebooted into the SCALE interface without issue or much delay.

## 3. Network + Shares

After installation, I reconfigured my network to use the same static IP address and DNS settings that were used with TrueNAS Core. This helped maintain compatibility with existing devices on my LAN. I then recreated all of my NFS shares by setting them up through the TrueNAS SCALE UI.

## 4. Final Checks

I confirmed that the new NFS shares were accessible from multiple clients on the network, including my Linux Mint PC. This ensured that my storage setup was functional and reliable after the migration. I also enabled automatic updates within the SCALE UI to ensure I receive future patches and security fixes without needing to manually intervention.

## Notes

- The TrueNAS SCALE UI is more modern and flexible, especially when it comes to managing apps and building dashboards

- Ultimately, the move from TrueNAS Core to TrueNAS SCALE went smoothly
