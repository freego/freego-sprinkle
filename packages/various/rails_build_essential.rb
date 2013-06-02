package :rails_build_essential do
  description "Essential packages for compile RVM's Ruby and rails gems"

  requires :git, :imagemagick

  packages = %w{build-essential libreadline6-dev zlib1g zlib1g-dev libyaml-dev autoconf
                libc6-dev libncurses5-dev automake libtool bison pkg-config libsqlite3-dev
                gawk sqlite3 libxslt1-dev libgdbm-dev libffi-dev}
  # libxslt1-dev libxml2-dev libssl-dev

  noop do
    pre :install, 'apt-get update'
  end

  apt packages

  verify do
    packages.each { |p| has_apt p }
  end
end