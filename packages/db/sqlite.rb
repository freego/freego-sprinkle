package :sqlite do
  description 'Sqlite database'

  apt 'sqlite3' do
    pre :install, 'apt-get update'
  end

  verify do
    has_apt 'sqlite3'
  end
end