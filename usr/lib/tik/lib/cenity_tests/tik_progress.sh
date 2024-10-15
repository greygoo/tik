#!/bin/sh

. ./tik_functions_test

prun systemd-repart --no-pager --pretty=0 --empty=force --dry-run=no --key-file=${tik_keyfile} ${image_target} > >(d --progress --title="Installing ${TIK_OS_NAME}" --text="Deploying OS Image" --pulsate --auto-close --no-cancel --width=400)

(tail -f ${encrypt_pipe}) | d --progress --title="Configuring Encryption" --auto-close --no-cancel --width=400

prun /usr/sbin/btrfs quota rescan -w ${mig_dir}/mnt | d --progress --title="Detected existing /home subvolume.." --pulsate --auto-close --no-cancel --width=400

(prun /usr/sbin/btrfs send ${mig_dir}/mnt/${snap_dir} | pv -f -F "# %b copied in %t %r" | prun /usr/sbin/btrfs receive ${mig_dir}) 2>&1 | d --progress --title="Backing up /home" --pulsate --auto-close --no-cancel --width=400

(prun /usr/sbin/btrfs send ${mig_dir}/mnt/${subsubvolname} | pv -f -F "# %b copied in %t %r" | prun /usr/sbin/btrfs receive ${mig_dir}/${snap_dir}/${subsubdirname}) 2>&1 | d --progress --title="Backing up containers" --pulsate --auto-close --no-cancel --width=400
