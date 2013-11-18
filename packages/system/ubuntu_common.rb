#
# Make sure we have some common ubuntu packages and utilities
#
package :ubuntu_common do

  packages = %w{ubuntu-minimal wget screen curl vim openssh-client
                openssh-server bash-completion logrotate landscape-common links2
                unattended-upgrades}

  noop do
    pre :install, 'apt-get update'
  end

  apt packages

  verify do
    packages.each { |p| has_apt p }
  end
end