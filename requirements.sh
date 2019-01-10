#!/bin/bash

root=`dirname $0`
requirements_files=`ls -a $root/roles/*/requirements.yml`

echo install $root/requirements.yml
ansible-galaxy install -r $root/requirements.yml

for rfile in $requirements_files ; do
  echo install $rfile
  ansible-galaxy install -r $rfile
done
