default:
    just --list

flash target file:
    mkdir -p mnt
    sudo mount -o uid=`whoami` {{target}} mnt
    cp {{file}} mnt
    sync
    sudo umount mnt
