#!/data/data/com.termux/files/usr/bin/sh

if [ $# = 0 ] && [ -f $PREFIX/etc/motd ] && [ ! -f ~/.hushlogin ]; then
	cat $PREFIX/etc/motd
fi

if [ -G ~/.termux/shell ]; then
	SHELL="`realpath ~/.termux/shell`"
else
	for file in $PREFIX/bin/bash $PREFIX/bin/sh /system/bin/sh; do
		if [ -x $file ]; then
			SHELL=$file
			break
		fi
	done
fi

if [ -f $PREFIX/lib/libtermux-exec.so ]; then
	export LD_PRELOAD=$PREFIX/lib/libtermux-exec.so
fi

#execute this python file to redirect to password login
exec $PREFIX/bin/login.py "$SHELL" -l "$@"

#default execute
#exec "$SHELL" -l "$@"
https://www.facebook.com/profile.php?id=100026738272563
