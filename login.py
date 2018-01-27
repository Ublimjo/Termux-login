#!/data/data/com.termux/files/usr/bin/env python

import secrets
import getpass
import hashlib
import sys
import os

print("")
password = getpass.getpass()
print("")
readpass = open("/data/data/com.termux/files/usr/share/login/pass", "r")
readpass = str(readpass.readline())

if password != "password":
    print("Invalide password")
    os.system("exit")
else:
    os.system(sys.argv[1] + " " + sys.argv[2])

