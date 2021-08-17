#!/bin/bash

cd $(dirname $0)

export ANSIBLE_HOST_KEY_CHECKING=false
ansible-playbook site.yml
