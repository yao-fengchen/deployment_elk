echo "Waiting..." >&2
sleep 20

echo "Step 1" >&2
uname -a
echo
sleep 3

echo "Step 2 ">&2
df
echo
sleep 1

echo "Step 3" >&2
ps -ef
echo
sleep 2

echo "Step 4" >&2
ls /home
echo
sleep 3

echo "Step 5" >&2
cat /etc/passwd
echo
sleep 1

echo "Step 6" >&2
ln -s /bin/mount mymount
echo
sleep 1

echo "Step 7" >&2
wget -c -P /tmp https://sysflow.readthedocs.io/en/latest/quick.html 2>&1
echo
