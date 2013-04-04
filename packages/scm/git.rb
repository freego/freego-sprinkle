package :git, :provides => :scm do
  description 'Git version control client'

  apt 'git' do
    pre :install, 'apt-get update'
  end

  verify do
    has_apt 'git'
  end
end