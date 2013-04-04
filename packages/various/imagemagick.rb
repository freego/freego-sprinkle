package :imagemagick do
  description 'Imagemagick for rails'

  packages =  %w{imagemagick libmagickwand-dev}

  noop do
    pre :install, 'apt-get update'
  end

  packages.each { |p| apt p }

  verify do
    packages.each { |p| has_apt p }
  end
end