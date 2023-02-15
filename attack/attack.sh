echo "Waiting..." >&2
sleep 60

echo "Step 1" >&2
mkdir testdir && cd testdir
echo
sleep 2

echo "Step 2" >&2
uname -a
lsblk
echo
sleep 2

echo "Step 3 ">&2
cp /bin/df mydf
echo
sleep 2

echo "Step 4" >&2
ln -s /bin/cat mycat
echo
sleep 2

echo "Step 5" >&2
./mydf
echo
sleep 2

echo "Step 6" >&2
./mycat /etc/passwd
echo
sleep 2

echo "Step 7" >&2
wget -O /app/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
echo
