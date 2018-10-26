# Skeleton for ansible system configuration
[`Ansible`](https://www.ansible.com/) is a simple, agentless IT automation tool allowing efficient system provisioning.

This project creates a self-contained `Ansible` skeleton (top-level directory containing all configuration and utility files) automtically linked to external user configuration groupings known as [roles](https://github.com/Teebor-Choka/Provisioning---Ansible-Roles).


## Setup Ansible environment
In order to setup the ansible environment, clone the skeleton repository from github:

    $ git clone https://github.com/Teebor-Choka/Provisioning---Ansible-skeleton.git ansible
    $ cd ansible
    
Execute the script located in the `files` directory that will setup the virtual environment (note that the root privileges might be required in order to install the `python3` and `python3-pip` packages, if these are not present on your system):
 
    $ bash ./files/scripts/setup_ansible_venv.sh

Once the virtual environment ([venv](https://virtualenv.pypa.io/en/latest/)) has been installed, it can be activated from within the **Ansible skeleton** directory using:

    $ source .venv/bin/activate

This enables the `ansible` package installed within the virtual environment. It is now possible to invoke ansible commands within the environment, e.g.:

    $ ansible --version
    ansible 2.7.1

Once your work in the Ansible skeleton directory is finished, deactivate the virtual environment:

    $ deactivate
  
  
## Setup hosts
In order to be able to run the Ansible playbooks against any host, the host must be specified in the inventory file called `hosts`. Although it is possible to run the playbooks against an *implicit localhost*, this breaks the current behaviour of some of the roles. Therefore, at minimum, the `hosts` file should contain the *localhost* specification `localhost ansible_connection=local`, if the playbooks are to be run against it.

To create a basic `hosts` file containing only the *localhost*, execute:

    $ echo "localhost ansible_connection=local" > hosts


## Target system
All of the roles are tested against **`XUbuntu 18.04`**.


## Future plans
- automatic CI-based testing for all roles in their minimum and maximum configurations
- extend support to the latest version of all `Debian` and `Fedora` based distributions
