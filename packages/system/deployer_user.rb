package :deployer_user do
  description 'Create the deployer user'

  username = 'deployer'

  noop do
    pre :install, "groupadd -f #{username}"
    pre :install, "useradd -g #{username} -m #{username};echo 0"
    pre :install, "usermod -s /bin/bash #{username}"
    
    # TODO add sudo privilege
    # pre :install, "echo '#{username}\tALL=(ALL) ALL' | tee -a /etc/sudoers"

    pre :install, "mkdir /home/#{username}/.ssh; echo 0"
    pre :install, "chown -R #{username}:#{username} /home/#{username}/.ssh; echo 0"
    #run "cat /tmp/ssh_key.pub.client >> /home/#{username}/.ssh/authorized_keys"
  end

  verify do
    has_directory "/home/#{username}"
  end

end