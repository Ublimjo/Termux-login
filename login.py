#!/data/data/com.termux/files/usr/bin/env python

import getpass
import hashlib
import sys
import os

password = getpass.getpass()

filepass = open("/data/data/com.termux/files/usr/share/login/.pass", "r")
filepass = filepass.read().split("\n")[0]

password = password.encode()
password = hashlib.sha1(password).hexdigest()

if password != filepass:
    print("Invalide password")
    os.system("exit")
else:
    os.system(sys.argv[1] + " " + sys.argv[2])
