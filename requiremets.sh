#!/bin/bash

yum install -y epel-release 
yum install -y docker wget get ansible git
yum install -y python-cryptography pyOpenSSL.x86_64






git clone https://github.com/openshift/openshift-ansible
git clone https://github.com/gshipley/installcentos.git


ssh-keygen -t rsa


for host in master1.example.com \
    node1.example.com \
    node2.example.com; \
    do ssh-copy-id -i ~/.ssh/id_rsa.pub $host; \
    done
