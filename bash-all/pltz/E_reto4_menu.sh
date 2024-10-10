#!/bin/bash

option=0

while :
do
clear
echo "1. info System "
echo "2. available memory "
echo "3. disk space "
echo "4. network info"
echo "5. env vars "
echo "6. app info "
echo "7. compressing files "
echo "8. exit "
echo ""
# read from user
read -n1 -p "enter an option [1-8]: " option
# validate
case $option in
1)
echo -e "\n actual processes..."
ps axu
sleep 3
;;
2)
echo -e "\n available memory.."
free
sleep 3
;;
3)
echo -e "\n disk space"
df -h
sleep 3
;;
4)
	echo -e "\n network info"
	ifconfig -a
	sleep 3
	;;
5)
	echo -e "\n env vars"
	env -u VAR
	sleep 3
	;;
6)
echo -e "\n program info"
dpkg -l | more
sleep 3
;;
7)
echo -e "\n file compressed"
tar -czvf file.tar.gz *
echo -e "\n done."
sleep 3
;;
8)
echo -e "\n bye!"
exit 0
;;
esac
done

