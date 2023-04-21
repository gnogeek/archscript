    #!/usr/bin/env -S bash -e
    mount UUID=${ROOTUUID} -o noatime,compress=zstd,ssd,commit=120,subvol=@/.snapshots /mnt/.snapshots
    #mount UUID=${ROOTUUID} -o noatime,compress=zstd,ssd,commit=120,subvol=@/boot/grub /mnt/boot/grub
    mount UUID=${ROOTUUID} -o noatime,compress=zstd,ssd,commit=120,subvol=@/root /mnt/root
    mount UUID=${ROOTUUID} -o noatime,compress=zstd,ssd,commit=120,subvol=@/tmp /mnt/tmp
    mount UUID=${ROOTUUID} -o noatime,ssd,commit=120,subvol=@/var/cache /mnt/var/cache
    mount UUID=${ROOTUUID} -o noatime,ssd,commit=120,subvol=@/var/log,nodatacow /mnt/var/log
    mount UUID=${ROOTUUID} -o noatime,ssd,commit=120,subvol=@/var/spool,nodatacow /mnt/var/spool
    mount UUID=${ROOTUUID} -o noatime,ssd,commit=120,subvol=@/var/tmp,nodatacow /mnt/var/tmp
    mount UUID=${EFIUUID} /mnt/boot
    swapon UUID=${SWAPUUID}
