#!/sbin/sh

sed -i 's/exit/unzip\ -p\ \$3\ \"preload.\*\"\ \|\ tar\ x\nexit/g' /res/image-binary
echo -e "assert(format("/preload"));\nassert(mount("/preload"));" >> /res/image-edify
