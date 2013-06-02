package :redis do
  description 'Redis Database'

  packages = %w{redis-server}

  noop do
    pre :install, 'apt-get update'
  end

  apt packages

  verify do
    packages.each { |p| has_apt p }
  end
end