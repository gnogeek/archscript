    #!/usr/bin/env -S bash -e
    mount /dev/sda2 -o noatime,compress=zstd,ssd,commit=120,subvol=@/.snapshots /mnt/.snapshots
    #mount UUID=${ROOTUUID} -o noatime,compress=zstd,ssd,commit=120,subvol=@/boot/grub /mnt/boot/grub
    mount /dev/sda2 -o noatime,compress=zstd,ssd,commit=120,subvol=@/root /mnt/root
    mount /dev/sda2 -o noatime,compress=zstd,ssd,commit=120,subvol=@/tmp /mnt/tmp
    mount /dev/sda2 -o noatime,ssd,commit=120,subvol=@/var/cache /mnt/var/cache
    mount /dev/sda2 -o noatime,ssd,commit=120,subvol=@/var/log,nodatacow /mnt/var/log
    mount /dev/sda2 -o noatime,ssd,commit=120,subvol=@/var/spool,nodatacow /mnt/var/spool
    mount /dev/sda2 -o noatime,ssd,commit=120,subvol=@/var/tmp,nodatacow /mnt/var/tmp
    mount /dev/sda1 /mnt/boot

