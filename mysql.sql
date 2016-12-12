- hosts: all
  remote_user: suzukiyo
  become: yes
  gather_facts: no

  tasks:
    - name: install nginx
      yum: name=nginx state=present

    - name: restart nginx
      service: name=nginx state=restarted

    - name: chkconfig nginx
      command: chkconfig nginx on
