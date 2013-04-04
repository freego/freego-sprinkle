package :rails_build_essential do
  description "Essential packages for compile RVM's Ruby and rails gems"

  requires :imagemagick

  packages = %w{build-essential libreadline6-dev zlib1g zlib1g-dev libyaml-dev autoconf
                libc6-dev libncurses5-dev automake libtool bison pkg-config libsqlite3-dev}
  # libxslt1-dev libxml2-dev libssl-dev

  noop do
    pre :install, 'apt-get update'
  end

  packages.each { |p| apt p }

  verify do
    packages.each { |p| has_apt p }
  end
end