source bunny_helpers.sh

# Set LED to Blue on Startup
	
# List installed tools in /tools and save to tools.txt on USB disk
cd /tools/
echo "Installed Tools:" > /root/udisk/installed-tools.txt
for i in $(ls -d */); do echo ${i%%/} >> /root/udisk/installed-tools.txt; done
sync && sleep 1 && sync
	
# Set LED to white on success
LED R G B
exit 0