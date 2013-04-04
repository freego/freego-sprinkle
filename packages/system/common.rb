package :common do
  description "Common utilities"

  packages = %w{wget screen curl}

  noop do
    pre :install, 'apt-get update'
  end

  packages.each { |p| apt p }

  verify do
    packages.each { |p| has_apt p }
  end
end