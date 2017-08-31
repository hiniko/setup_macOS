#!/bin/bash
#
# setup.sh
#
# A bootstrap script for installing and running the setup_macOS Ansible Playbook

# Odd ends
SILENT="2>&1 >/dev/null"
TOSTDERR="1>&2"

# Check a command exists silently 
check() { command -v $1 $SILENT; }

# Pretty up running commands so they are easily found in the console / logfile
run() {
	$@
	echo "################################################################################"
	
}

# Check if Ansible has been installed and install if not
if [[ -z "$(check ansible)"  ]]; then 
	echo "Ansible not found, installing now"
	# Install Ansible through pip
	run sudo easy_install pip
	run sudo pip install ansible
else 
	echo "Found Ansible!"
fi

# Install modules for ansible
echo Installing Ansible Modules
ansible-galaxy install -r requirements.yml
# Run the Ansible Playbook
echo Running ansible playbook
ansible-playbook -i "localhost," -c local setup_macOS.playbook.yml
