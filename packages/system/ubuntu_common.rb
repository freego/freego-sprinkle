#
# Make sure we have some common ubuntu packages and utilities
#
package :ubuntu_common do

  packages = %w{ubuntu-minimal wget screen curl vim openssh-client openssh-server
                bash-completion logrotate landscape-common links2 ufw}

  noop do
    pre :install, 'apt-get update'
  end

  apt packages

  runner 'ufw allow 80'
  runner 'ufw allow 22'
  runner 'ufw enable'

  verify do
    packages.each { |p| has_apt p }
  end
end