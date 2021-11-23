echo $USER | xclip -sel clip
clipboard_content=`xclip -o -selection clipboard`
#echo "$clipboard_content"
if [ "$clipboard_content" != "root" ]
then
	echo "You must be Root"
	exit
else
echo "blacklist r8188eu" > "/etc/modprobe.d/realtek.conf"
git clone https://github.com/aircrack-ng/rtl8188eus.git
cd rtl8188eus
make
make install
fi
echo "Reboot if you can't set your card on monitor mode yet"
