package :mariadb_10, :provides => :mysql do
  description 'MariaDB 10.0 Database'

  apt 'python-software-properties'
  runner 'apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db'
  runner "add-apt-repository 'deb http://mariadb.cu.be//repo/10.0/ubuntu precise main'"
  
  apt 'mariadb-server' do
    pre :install, 'apt-get update'
  end

  verify do
    has_apt 'mariadb-server'
  end  
end