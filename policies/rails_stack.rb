policy :rails_stack, :roles => :app do
  requires :deployer_user
  requires :git
  requires :ubuntu_base_system
  requires :rails_build_essential
  # requires :rvm_ruby_193
  # requires :bundler
  requires :oracle_mysql
  requires :nginx
end

deployment do
  delivery :capistrano
end