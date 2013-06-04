package :mariadb_55, :provides => :mysql do
  description 'MariaDB 5.5 Database'

  packages = %w{mariadb-server libmariadbclient-dev}

  apt 'python-software-properties'
  runner 'apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db'
  runner "add-apt-repository 'http://mirror.netcologne.de/mariadb/repo/5.5/ubuntu'"
  
  apt packages do
    pre :install, 'apt-get update'
  end

  transfer './configurations/mysql/my.cnf', '/etc/mysql/my.cnf.example'

  verify do
    packages.each { |p| has_apt p }
    has_file '/etc/mysql/my.cnf.example'
  end  
end