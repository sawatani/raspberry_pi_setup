#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=false
ansible-playbook site.yml
