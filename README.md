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

    Required options:
      -p <playbook file>    Playbook file to use
  
    Not required options:  
      -d                    Perform dry run
      -g                    Install galaxy roles from requirements.yml file
      -h                    Show this help text
      -i <inventory file>   Inventory file to use
      -k <private key>      Private key to use for the SSH connection
      -l <host>             Limit to specified host
      -m                    Use mitogen to speed up playbook execution
      -r                    Retry execution for failed hosts
      -s <sudo password>    SUDO password to use
      -t <task name>        Start at task with specified name
      -v <vault password>	 Vault password to use

    Example:
      $scriptName -p my-playbook.yml -s my-sudo-password -v my-vault-password -l my-single-host
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
