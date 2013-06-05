#
# our standard Ubuntu server ready for rails application
#
policy :ubuntu_1204_standard_rails_stack, :roles => :app do
  requires :rails_ubuntu_base_setup
  requires :mariadb_55
  requires :redis
  requires :mongodb
  requires :nginx
  requires :shorewall
  requires :monit
end

deployment do
  delivery :capistrano
end