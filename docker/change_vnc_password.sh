#!/bin/bash

# Define the VNC password file location
VNC_PASSWD_FILE="$HOME/.vnc/passwd"

# Ensure the .vnc directory exists
mkdir -p "$HOME/.vnc"

# Prompt user for new password
echo "Enter new VNC password:"
vncpasswd -f > "$VNC_PASSWD_FILE"

# Set correct permissions
chmod 600 "$VNC_PASSWD_FILE"

# Restart the VNC server to apply changes
echo "Restarting VNC server..."
vncserver -kill :1
vncserver :1 -geometry 1920x1080 -depth 24

echo "VNC password changed successfully!"
