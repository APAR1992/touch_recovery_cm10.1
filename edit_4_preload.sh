#!/sbin/sh

sed 's/exit/unzip\ -p\ \$3\ \"preload.\*\"\ \|\ tar\ x\nexit/g' /res/image-binary > /res/image-binary2
cp /res/image-edify /res/image-edify2
echo -e "assert(format("/preload"));\nassert(mount("/preload"));" >> /res/image-edify2
