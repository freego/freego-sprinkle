package :mongodb do
  description 'MongoDB Database'

  packages = %w{mongodb}

  noop do
    pre :install, 'apt-get update'
  end

  apt packages

  verify do
    packages.each { |p| has_apt p }
  end
end