echo ""
echo "*********************************************************************************************************"
echo "***                                                                                                   ***"
echo ""
echo -e "                                                  \e[32mHello\e[0m \e[7m\e[32m$(whoami)\e[0m"
echo " "
echo -e "                                           \e[32mWelcome To Proxy Grabber 1.0\e[0m"
echo " "
echo -e "                                               \e[32mBy Yassine Lamlaika\e[0m"
echo ""
echo "***                                                                                                   ***"
echo "*********************************************************************************************************"
echo " "
echo -e "                                                   \e[5m\e[32mprocessing.....\e[0m \e[25m"
echo " "
echo "*********************************************************************************************************"
sleep 5
wget -O yassine.txt http://www.proxyserverlist24.top/
echo "*********************************************************************************************************"
grep "href='http://www.proxyserverlist24.top/2019" yassine.txt | cut -d"'" -f2 | grep -v  more | grep -v link > links.txt
rm yassine.txt
cat links.txt | sed -n '2p' > 1links.txt
for a in `cat 1links.txt`
do
wget -O yassine2.txt $a
done
cat yassine2.txt | grep ":" | cut -d":" -f1,2 | grep -v [a-Z] > proxy_list
rm yassine2.txt
rm links.txt
rm 1links.txt
clear

wget -O yassine.txt http://www.proxyserverlist24.top/
echo "*********************************************************************************************************"
grep "href='http://www.proxyserverlist24.top/2019" yassine.txt | cut -d"'" -f2 | grep -v  more | grep -v link > links.txt
rm yassine.txt
cat links.txt | sed -n '3p' > 1links.txt
for a in `cat 1links.txt`
do
wget -O yassine2.txt $a
done
cat yassine2.txt | grep ":" | cut -d":" -f1,2 | grep -v [a-Z] >> proxy_list
rm yassine2.txt
rm links.txt
rm 1links.txt
clear

wget -O yassine.txt http://www.proxyserverlist24.top/
echo "*********************************************************************************************************"
grep "href='http://www.proxyserverlist24.top/2019" yassine.txt | cut -d"'" -f2 | grep -v  more | grep -v link > links.txt
rm yassine.txt
cat links.txt | sed -n '1p' > 1links.txt
for a in `cat 1links.txt`
do
wget -O yassine2.txt $a
done
cat yassine2.txt | grep ":" | cut -d":" -f1,2 | grep -v [a-Z] >> proxy_list
rm yassine2.txt
rm links.txt
rm 1links.txt
clear
wget -O get.txt http://multiproxy.org/txt_all/proxy.txt
cat get.txt >> proxy_list
rm get.txt
sort proxy_list | uniq -i > Proxy.txt
rm proxy_list
clear
echo ""
echo "*********************************************************************************************************"
clear
echo ""
echo -e "                                         \e[7m\e[32mThe Proxy List Refreshed Every 24 H .\e[0m"
echo ""
echo -e "                                                 \e[7m\e[32mYOU GOT $(wc -l Proxy.txt | cut -d" " -f1) PROXY\e[0m"
echo " "
echo "*********************************************************************************************************"

exit

