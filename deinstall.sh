sudo dpkg --purge `dpkg --get-selections | grep deinstall | cut -f1`
