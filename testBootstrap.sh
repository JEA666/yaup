#!/bin/bash
# https://google.github.io/styleguide/shell.xml

if ( which ansible > /dev/null );then
  echo "Ansible exist"
else
  echo "Get ready for Ansible"
    apt update
    apt install software-properties-common -y
    apt-add-repository -y --update ppa:ansible/ansible
    apt install ansible -y
fi

cat > ~/git/pri/yaup/inventory/local/host_vars/priHost <<EOF
priGitUserName: GitUser
priUserMail: GitUser@example.com
priUserName: testUser
EOF

sudo ansible-playbook ubuntudesktop.yml 
