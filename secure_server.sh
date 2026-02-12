# Update system packages
sudo apt update && sudo apt upgrade -y

# Setup a basic firewall
sudo ufw allow ssh
sudo ufw enable
