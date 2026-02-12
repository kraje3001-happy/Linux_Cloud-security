#!/bin/bash
# ---------------------------------------------------------
# Project: Linux Server Hardening for Cloud Environments
# Purpose: Secure an Ubuntu/Debian instance post-deployment
# Author: [Rajeshwari] | 2026 Career Transition Project
# ---------------------------------------------------------

echo "Starting Server Hardening Protocol..."

# 1. Update & Patch System (Data Management)
echo "Updating system repositories..."
sudo apt-get update && sudo apt-get upgrade -y

# 2. Configure Firewall (Cybersecurity)
echo "Configuring UFW (Uncomplicated Firewall)..."
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw --force enable

# 3. Secure SSH Access
# Disables root login to prevent brute force attacks
echo "Securing SSH configuration..."
sudo sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sudo systemctl restart ssh

echo "Hardening Complete. Server is now secured."

