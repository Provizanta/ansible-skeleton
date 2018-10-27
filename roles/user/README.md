# Ansible role collection

Ansible [role](https://docs.ansible.com/ansible/latest/user_guide/playbooks_reuse_roles.html) is used for "automatically loading certain vars_files, tasks, and handlers based on a known file structure".

The Ansible roles contained in this repository are used to easily and efficiently setup any machine typically for use in a user/dev environment.

## Requirements

[Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) is required to use roles in this project.
  - if possible, use the latest stable version of `ansible`
  
All roles present in this repository can be used standalone or combined with the accompanying [ansible skeleton](https://github.com/Teebor-Choka/Provisioning---Ansible-skeleton) project.

## Project structure

This project does not use any specific layout. Each role is located in a separate directory. Non-role documents are located in the project's root directory.
  - dev
    - create
      - empty_project
        - [cpp](./dev/create/empty_project/cpp)
        - [python](./dev/create/empty_project/python)
      - [ignore_file](./dev/create/ignore_file)
      - [license](./dev/create/license)
    - [python](./dev/python)
  - [git](./git)
  - [gpg](./gpg)
    - operation
      - [export](./gpg/operation/export)
      - [generate](./gpg/operation/generate)
      - [import](./gpg/operation/import)
      - [utils](./gpg/operation/utils)
  - [keepass](./keepass)
  - `LICENSE.md`: project license file
  - `README.md`: project readme file
