# classVM
Ansible build for classVM

A pre-built VM is available here:
https://drive.google.com/uc?id=1-7r_1sS_EqUVFUuYY0BA5MPAFiyUC_6k&export=download

Size: ~6.5G plus ~14G when unpacked (25G free on disk total)

Credentials on the pre-built VM:
- Username: infosec
- Password: infosec

When first logging in, it will ask you to change it.  
It will ask you to enter the old password first (in a non-obvious way) and then the new password twice.

Note: if while importing the VM, you get an error that it "... did not pass OVF specification conformance ...", click on Retry and it should import and run fine.

============

To build the VM yourself, we recommend the following minimum specs:
- XUbuntu 64-bit 20.04 LTS (20.04.3 as of today), get the ISO from https://xubuntu.org/download
- Legacy BIOS
- 2 vCPUs
- 8 GB of RAM
- 20 GB of disk (thin provisioned, initial use ~14 GB)
- DHCP / Share with my machine for network

When installing, the default install options are fine, "Easy Install" included.

Once the install is completed, run the following as root (via sudo):
- sudo apt -y install git ansible
- git clone https://github.com/rfifarek/classVM.git
- cd classVM
- sudo ansible-playbook build.yml

to finish building the VM with the tools and scripts needed.
