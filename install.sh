cp code/open_serial.service /etc/systemd/system/open_serial.service
cp code/open_serial.sh /home/open_serial.sh
chmod +x /home/open_serial.sh
sudo systemctl enable open_serial
