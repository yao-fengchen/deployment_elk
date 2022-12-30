echo "Waiting..." >&2
sleep 60

echo "Step 1" >&2
uname -a
echo
sleep 2

echo "Step 2 ">&2
cp /bin/df mydf
echo
sleep 2

echo "Step 3" >&2
mkdir host
echo
sleep 2

echo "Step 4" >&2
ln -s /bin/mount ttt
echo
sleep 2

echo "Step 5" >&2
ln -s /bin/cat mycat
echo
sleep 2

echo "Step 6" >&2
./ttt /dev/sda1 host/
echo
sleep 2

echo "Step 7" >&2
./mydf
echo
sleep 2

echo "Step 8" >&2
./mycat /etc/passwd
echo