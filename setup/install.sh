dir="/root/client/scripts"
init_dir="/etc/init.d"
rc_dir="/etc/rc2.d"
backup_dir="/root/client/config"

ln -s $dir/dns.sh $init_dir/dns.sh
ln -s $init_dir/dns.sh $rc_dir/S90dns
ln -s $dir/update_ipop.sh $init_dir/update_ipop.sh
ln -s $init_dir/update_ipop.sh $rc_dir/S91update_ipop
ln -s $dir/ipop.sh $init_dir/ipop.sh
ln -s $init_dir/ipop.sh $rc_dir/S92ipop
ln -s $dir/gridcndor.sh $init_dir/gridcndor.sh
ln -s $init_dir/gridcndor.sh $rc_dir/S93gridcndor
ln -s $dir/xison.sh $init_dir/xison.sh
ln -s $init_dir/xison.sh $rc_dir/S99xison

cp /etc/dhclient.conf $backup_dir/dhclient.conf

echo "prepend domain-name-servers 127.0.0.1;" >> /etc/dhclient.conf
echo "  supersede domain-name \"condor_wow\";" >> /etc/dhclient.conf