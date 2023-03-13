import sys
import subprocess
from os import devnull, environ
from os.path import basename, isfile
from socket import gethostname
from sys import exit, stderr, stdout
from time import asctime, sleep


if __name__ == "__main__":
    print("Waiting...")
    sleep(6)
    
    p = subprocess.Popen("./attack.sh", shell=True, cwd="/app", stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    try:
        p.wait(timeout=180)
        if p.poll:
            outs, errs = p.communicate()
            print(outs)
            print(errs)
    except subprocess.TimeoutExpired as e:
        print("timeout")
        p.kill()  
    sleep(2)
