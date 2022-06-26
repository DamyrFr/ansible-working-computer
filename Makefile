init:
	apt update
	apt -y upgrade
	apt -y install python3-pip
	pip3 install ansible
	ansible-galaxy collection install ansible.posix

dry_run:
	ansible-playbook computer.yml --check

debug:
	ansible-playbook -vvv computer.yml --tags all

full:
	ansible-playbook computer.yml --tags all

firefox:
	ansible-playbook computer.yml --tags firefox

upgrade:
	ansible-playbook computer.yml --tags "firefox,upgrade"

dotfiles:
	ansible-playbook computer.yml --tags dotfiles
