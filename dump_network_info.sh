

# Define output file with date
OUTPUT_FILE="network_info_$(date +%Y%m%d).txt"

# Create header for the output file
echo "Network Information Dump - $(date)" > $OUTPUT_FILE
echo "=================================" >> $OUTPUT_FILE

# Get IP address
echo -e "\nIP Address:" >> $OUTPUT_FILE
ip addr >> $OUTPUT_FILE

# Get DNS servers
echo -e "\nDNS Servers:" >> $OUTPUT_FILE
cat /etc/resolv.conf >> $OUTPUT_FILE

# Get open ports
echo -e "\nOpen Ports:" >> $OUTPUT_FILE
nmap localhost >> $OUTPUT_FILE

# Get routing table
echo -e "\nRouting Table:" >> $OUTPUT_FILE
ip route >> $OUTPUT_FILE

# Get network interfaces
echo -e "\nNetwork Interfaces:" >> $OUTPUT_FILE
ip link >> $OUTPUT_FILE

# Get firewall status
echo -e "\nFirewall Status:" >> $OUTPUT_FILE
if command -v ufw &> /dev/null; then
    ufw status >> $OUTPUT_FILE
elif command -v firewall-cmd &> /dev/null; then
    firewall-cmd --state >> $OUTPUT_FILE
else
    echo "No firewall utility found." >> $OUTPUT_FILE
fi

echo -e "\nNetwork information saved to $OUTPUT_FILE"


