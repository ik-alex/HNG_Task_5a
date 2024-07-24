#!/bin/bash

# Check if script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit 1
fi

echo "Installing dependencies and setting up systemd service..."
apt-get update
apt-get install -y nginx docker.io

# Copy the main script to /usr/local/bin
cp devopsfetch /usr/local/bin/
chmod +x /usr/local/bin/devopsfetch

#setup systemd service
cat <<EOF > /etc/systemd/system/devopsfetch.service
[Unit]
Description=DevOpsFetch Monitoring Service
After=network.target

[Service]
ExecStart=/usr/local/bin/devopsfetch -t '1 hour ago'
Restart=always

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl enable devopsfetch.service
systemctl start devopsfetch.service
echo "Service installed and started."