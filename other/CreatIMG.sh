mount -o remount,rw /data;
swapoff /dev/block/loop7;
dd if=/dev/zero of=/data/swap.img bs=1024 count=181072;
free;    
