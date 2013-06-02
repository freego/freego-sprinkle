package :imagemagick do
  description 'Imagemagick for rails apps'

  packages =  %w{imagemagick libmagickwand-dev}

  noop do
    pre :install, 'apt-get update'
  end

  apt packages

  verify do
    packages.each { |p| has_apt p }
  end
end