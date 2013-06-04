package :nginx, :provides => :web_server do

  requires :ubuntu_common

  description 'NGINX web server'

  apt 'nginx' do
    # updated nginx distribution
    pre :install, "wget http://nginx.org/keys/nginx_signing.key && apt-key add ./nginx_signing.key && rm -f nginx_signing.key"
    pre :install, "add-apt-repository 'deb http://nginx.org/packages/ubuntu/ precise nginx'"
    pre :install, 'apt-get update'
  end

  runner 'mkdir -p /etc/nginx/sites-available'
  runner 'mkdir -p /etc/nginx/sites-enabled'
  transfer './configurations/nginx/nginx.conf', '/etc/nginx/nginx.conf.example'
  transfer './configurations/nginx/rails_app', '/etc/nginx/sites-available/rails_app.example'

  verify do
    has_apt 'nginx'
    has_file '/etc/nginx/nginx.conf.example'
    has_file '/etc/nginx/sites-available/rails_app.example'
    has_directory '/etc/nginx/sites-available'
    has_directory '/etc/nginx/sites-enabled'
  end
end