#
# NOTE:
# you need to manually check and enable configurations in /etc/monit/conf.d
#
package :ufw do

  apt 'ufw' do
    pre :install, 'apt-get update'
  end

  # runner 'ufw allow 80'
  # runner 'ufw allow 22'
  # runner 'ufw enable'

  verify do
    has_apt "ufw"
  end

end