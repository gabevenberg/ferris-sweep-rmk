default:
    just --list

flash target side:
    mkdir -p mnt
    sudo mount -o uid=`whoami` /dev/{{target}} mnt
    cp ./rmk-{{side}}.uf2 mnt
    sync
    sudo umount mnt
