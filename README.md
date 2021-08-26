# classVM
Ansible build for classVM

VM specs:
- XUbuntu 64-bit 20.04 LTS (20.04.2.0 as of today)
- Legacy BIOS
- 2 vCPUs
- 4 GB of RAM
- 20 GB of disk (thin provisioned)
- DHCP / Share with my machine
Default install options

Pre-built VM:
- Username: infosec
- Password: infosec (you should change this, immediately)

To build the VM, as root (via sudo):
- sudo apt -y install git ansible
- git clone https://github.com/rfifarek/classVM.git
- cd classVM
- sudo ansible-playbook build.yml
