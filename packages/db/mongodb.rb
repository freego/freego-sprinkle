package :mongodb do
  description 'MongoDB Database'

  packages = %w{mongodb-10gen}

  runner "sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10"
  runner "echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list"

  noop do
    pre :install, 'apt-get update'
  end

  apt packages

  verify do
    packages.each { |p| has_apt p }
  end
end