package :nginx, :provides => :web_server do

  requires :ubuntu_common

  description 'NGINX web server'

  apt 'nginx' do
    pre :install, "wget http://nginx.org/keys/nginx_signing.key && apt-key add ./nginx_signing.key && rm -f nginx_signing.key"
    pre :install, "add-apt-repository 'deb http://nginx.org/packages/ubuntu/ precise nginx'"
    pre :install, 'apt-get update'
  end

  verify do
    has_apt 'nginx'
  end
end