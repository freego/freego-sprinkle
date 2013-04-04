package :oracle_mysql, :provides => :mysql do
  description 'Mysql Database'

  packages = %w{mysql-server mysql-client libmysqld-dev}

  noop do
    pre :install, 'apt-get update'
  end

  packages.each { |p| apt p }

  verify do
    packages.each { |p| has_apt p }
  end
end