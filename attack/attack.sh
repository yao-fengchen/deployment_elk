echo "Waiting..." >&2
sleep 60

echo "Step 1" >&2
python3 /app/getinfo.py
echo
sleep 2

echo "Step 2" >&2
mkdir testdir && cd testdir
sleep 2
lsblk
echo
sleep 2

echo "Step 3" >&2
uname -a
echo
sleep 2

echo "Step 4 ">&2
cp /bin/df mydf
echo
sleep 2

echo "Step 5" >&2
ln -s /bin/cat mycat
echo
sleep 2

echo "Step 6" >&2
./mydf
echo
sleep 2

echo "Step 7" >&2
./mycat /etc/passwd
echo
sleep 2

echo "Step 8" >&2
wget -O /app/CentOS-Base.repo http://www.baidu.com
echo
sleep 2

echo "Step 9" >&2
ln -s /bin/wget myget && ./myget -O /app/repo http://www.baidu.com
echo
sleep 2

echo "Step 10" >&2
chmod +x /app/repo
echo
sleep 2

echo "Step 11" >&2
ps -ef
echo
sleep 2

echo "Step 12" >&2
ps -ef | grep python
echo
sleep 2

echo "Step 13" >&2
head -n 10 /proc/cpuinfo
echo
sleep 2

echo "Step 14" >&2
ln -s /bin/lsblk mylsblk
sleep 2 
./mylsblk > info.txt
echo
sleep 2

echo "Step 15" >&2
touch -m mydf
echo
sleep 2

echo "Step 16" >&2
vmstat
echo
sleep 2

echo "Step 17" >&2
ln -s /bin/cat cat1 && ln -s cat1 cat2 && ./cat2 /etc/passwd
echo
sleep 2

echo "Step 18" >&2
cat /etc/passwd
echo
sleep 2

echo "Step 19" >&2
./cat2 /etc/shadow
echo
sleep 2

echo "Step 20" >&2
whoami
echo
sleep 2

echo "Step 21" >&2
ln -s cat1 /bin/catt
echo
sleep 2

echo "Step 22" >&2
./cat1 /etc/passwd
echo
sleep 2

echo "Step 23" >&2
rm -f /bin/wget
echo
sleep 2

echo "Step 24" >&2
cat /proc/meminfo
echo
sleep 2

echo "Step 25" >&2
free
echo
sleep 2

echo "Step 26" >&2
ls /root/
echo
sleep 2

echo "Step 27" >&2
ln -s /bin/ln myln && ./myln /bin/mount tt && ./tt /dev/sda1 /app/
echo
sleep 2

echo "Step 28" >&2
find / -name log
echo
sleep 2

echo "Step 29" >&2
grep "root" /etc/passwd
echo
sleep 2

echo "Step 30" >&2
touch ttttt && tar -czvf test.tar.gz ttttt
echo
sleep 2

echo "Step 31" >&2
chmod 777 ttttt
echo
sleep 2

echo "Step 32" >&2
rm -rf /usr
echo
