#!/data/data/com.termux/files/usr/bin/env python

import secrets
import getpass
import hashlib
import sys
import os

password = getpass.getpass()
if password != "Ul9085jo":
    print("Invalide password")
    os.system("exit")
else:
    os.system(sys.argv[1] + " " + sys.argv[2])

