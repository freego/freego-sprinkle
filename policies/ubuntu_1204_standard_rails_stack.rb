#
# our standard Ubuntu server ready for rails application
#
policy :ubuntu_1204_standard_rails_stack, :roles => :app do
  requires :deployer_user
  requires :ubuntu_common
  requires :rails_build_essential
  requires :mariadb_10
  requires :redis
  requires :mongodb
  # requires :postgresql_92
  requires :nginx
end

deployment do
  delivery :capistrano
end