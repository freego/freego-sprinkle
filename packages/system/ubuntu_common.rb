#
# Make sure we have some common ubuntu packages and utilities
#
package :ubuntu_common do

  packages = %w{ubuntu-minimal wget screen curl vim-tiny openssh-client openssh-server 
                bash-completion logrotate}

  noop do
    pre :install, 'apt-get update'
  end

  apt packages

  verify do
    packages.each { |p| has_apt p }
  end
end