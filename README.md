# ansible-playbook-wrapper

Overview
--------
Simple bash wrapper to execute Ansible playbooks in a more convenient way:
   ```
   ############################
   # Ansible Playbook Wrapper #
   ############################

   Usage:
     ansible-playbook-wrapper [Options] <Args>

   Options:
     -h                    Show this help text
     -i <inventory file>   Inventory file to use [optional]
     -d                    Perform dry run
     -l <host>             Limit to specified host [optional]
     -p <playbook file>    Playbook file to use
     -r                    Retry execution for failed hosts
     -s <sudo password>    SUDO password to use [optional]
     -t <task name>        Start at task with specified name
     -v <vault password>   Vault password to use [optional]

   Example:
     ansible-playbook-wrapper -p my-playbook.yml -s my-sudo-password -v my-vault-password -l my-single-host
   ```

Prerequisites
-------------
* [Ansible](https://docs.ansible.com/ansible/2.7/installation_guide/intro_installation.html) must be installed

Installation
------------
* Download ansible-playbook-wrapper script to `/usr/local/bin` folder:

   ```
   sudo wget https://raw.githubusercontent.com/chrisipa/ansible-playbook-wrapper/master/ansible-playbook-wrapper -O /usr/local/bin/ansible-playbook-wrapper
   ```
   
* Make ansible-playbook-wrapper script executable:   

   ```
   sudo chmod +x /usr/local/bin/ansible-playbook-wrapper
   ```
