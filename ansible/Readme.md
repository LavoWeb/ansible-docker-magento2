sudo adduser dockeruser

ssh-copy-id dockeruser@127.0.0.1

echo "dockeruser ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers

ansible-playbook -i hosts rancher.yml


- name: add container to inventory
  add_host:
    name: my_jenkins
    ansible_connection: docker
    ansible_user: jenkins
  changed_when: false