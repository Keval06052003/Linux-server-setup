# Network Information Script

This script gathers and saves detailed network information about a system, including IP addresses, DNS servers, open ports, routing tables, network interfaces, and firewall status.

## Features
- Retrieves IP address, DNS servers, and routing table details.
- Scans open ports using `nmap` (if installed).
- Lists network interfaces and their statuses.
- Checks firewall status (`ufw` for Ubuntu, `firewalld` for CentOS).
- Saves all data to a timestamped text file.

## Requirements
Ensure the following utilities are installed:
- `ip` (included by default in most Linux distributions)
- `nmap` (for open port scanning)
- `ufw` (for Ubuntu users) or `firewalld` (for CentOS users)

### **Installation of Missing Dependencies**
#### On Ubuntu:
```bash
sudo apt update && sudo apt install nmap ufw -y
