#
# Essential setup for rails app hosting, compile RVM's Ruby and common gems
#
package :rails_ubuntu_base_setup do
  description "Essential setup for rails app hosting, compile RVM's Ruby and common gems"

  requires :deployer_user, :ubuntu_common, :git

  username = 'deployer'
  libs = %w{build-essential libreadline6-dev zlib1g zlib1g-dev libyaml-dev autoconf
                libc6-dev libncurses5-dev automake libtool bison pkg-config libsqlite3-dev
                gawk sqlite3 libxslt1-dev libgdbm-dev libffi-dev libssl-dev libxslt1-dev
                libxml2-dev imagemagick libmagickwand-dev}

  apt libs do
    pre :install, 'apt-get update'
  end

  runner "mkdir -p /var/www"
  runner "chown -R #{username}:#{username} /var/www/"

  verify do
    libs.each { |p| has_apt p }
    has_directory "/var/www"
  end
end