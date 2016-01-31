mac="00:"`echo $RANDOM | md5sum | sed 's/\(..\)/&:/g' | cut -c1-14`
echo $mac					
sudo ifconfig wlan0 down
sudo ifconfig wlan0 hw ether $mac
sudo ifconfig wlan0 up
sudo dhclient
