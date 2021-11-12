# classVM
Ansible build for classVM

A pre-built VM is available here:

Credentials on the pre-built VM:
- Username: infosec
- Password: infosec (you should change this, immediately)

============

To build the VM yourself, recommend the following specs:
- XUbuntu 64-bit 20.04 LTS (20.04.3 as of today), get the ISO from https://xubuntu.org/download
- Legacy BIOS
- 2 vCPUs
- 8 GB of RAM
- 20 GB of disk (thin provisioned, actual use ~11 GB)
- DHCP / Share with my machine for network

When installing, the default install options are fine, "Easy Install" included.

Once the install is completed, run the following as root (via sudo):
- sudo apt -y install git ansible
- git clone https://github.com/rfifarek/classVM.git
- cd classVM
- sudo ansible-playbook build.yml

to finish building the VM with the tools and scripts needed.
