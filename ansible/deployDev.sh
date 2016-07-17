#!/bin/sh
bash reloadDocker.sh
ansible-playbook -i inventory/dev rancher.yml
