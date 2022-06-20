#!/bin/bash

## Usage example
# sudo ./setup_frp.sh -u <linux-user-name> -n <specific-name> -i <server-ip> -p <remote-port> -l <local-ssh-port>

USER_NAME="edge"
SERVER_IP=""
LOCAL_PORT="22"

while getopts "u:n:i:p:l:" opt; do
case $opt in
  u)
    echo "Setup frp with user $OPTARG"
    USER_NAME=$OPTARG
    FRP_PATH=/home/$OPTARG/program
    echo "Frp will install in $FRP_PATH"
    ;;
  n)
    echo "Frp name will set as $OPTARG"
    FRP_NAME=$OPTARG
    ;;
  i)
    echo "Proxy server ip is $OPTARG"
    SERVER_IP=$OPTARG
    ;;
  p)
    echo "Remote port is $OPTARG"
    REMOTE_PORT=$OPTARG
    ;;
  l)
    echo "Local port is $OPTARG"
    LOCAL_PORT=$OPTARG
    ;;
  \?)
    echo "Invalid arguements"
esac
done


mkdir -pv $FRP_PATH
cd $FRP_PATH
wget https://github.com/fatedier/frp/releases/download/v0.43.0/frp_0.43.0_linux_amd64.tar.gz
tar zxvf frp_0.43.0_linux_amd64.tar.gz
rm frp_0.43.0_linux_amd64.tar.gz
mv frp_0.43.0_linux_amd64/ frp

tee -a ./frpc.service > /dev/null <<EOF
[Unit]
Description=Frp Server Daemon
After=syslog.target network.target
Wants=network.target

[Service]
Type=simple
ExecStart=$FRP_PATH/frp/frpc -c $FRP_PATH/frp/frpc.ini
ExecStop=/usr/bin/killall frpc
RestartSec=1min
KillMode=control-group
Restart=always

[Install]
WantedBy=multi-user.target
EOF

sudo mv frpc.service /etc/systemd/system/frpc.service

cd $FRP_PATH/frp


sed -i "s+server_addr = 127.0.0.1+server_addr = $SERVER_IP+g" frpc.ini
sed -i "s+ssh+$FRP_NAME+g" frpc.ini
sed -i "s+local_port = 22+local_port = $LOCAL_PORT+g" frpc.ini
sed -i "s+remote_port = 6000+remote_port = $REMOTE_PORT+g" frpc.ini

sudo systemctl daemon-reload

sudo systemctl start frpc
sleep 10

sudo systemctl status frpc
sudo systemctl enable frpc
