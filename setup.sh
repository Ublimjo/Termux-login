#!/data/data/com.termux/files/usr/bin/sh

pkg install python
cp login.py $PREFIX/bin/
chmod 700 $PREFIX/bin/login.py
cp login $PREFIX/bin/
chmod 700 $PREFIX/bin/login
mkdir /data/data/com.termux/files/usr/share/login/
read -p "Enter new password: " passone;
read -p "Repeat password: " passtwo;

if [ $passone = $passtwo ];
then
	touch /data/data/com.termux/files/usr/share/login/pass
	echo $passone > /data/data/com.termux/files/usr/share/login/pass
	echo 'Login installed'

elif [ $passone != $passtwo ];
then
	echo 'Password dont match'
fi

