rsync -a --delete /var/www/dokuwiki/ /vagrant/dokuwiki-data-mirror
git add -A
timestmp=$(perl -e 'BEGIN {use POSIX;} print strftime("%Y-%m-%d %H:%M:%S ", localtime)')
commit_message="backup on $timestmp"
git commit -m $commit_message