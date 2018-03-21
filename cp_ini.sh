#!/bin/bash
for dir in `ls /home/vagrant/php`
do
	path=`/home/vagrant/php/$dir/bin/php -i | grep php.ini |tail -1|cut  -d " " -f 5`
	echo $path
	cp /vagrant/script/conf/php.ini $path
done