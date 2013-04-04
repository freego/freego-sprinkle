package :nginx, :provides => :web_server do
  description 'NGINX web server'

  apt 'nginx' do
    pre :install, 'apt-get update'
  end

  verify do
    has_apt 'nginx'
  end
end