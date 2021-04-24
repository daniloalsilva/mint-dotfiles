# just run something to disable pass confirmation in ansible
sudo ls > /dev/null

# install ansible
sudo apt install ansible -y

# call playbooks
ansible-playbook setup.yml

