# TODO
package :rvm_ruby_193, :provides => :rvm_ruby do
  description 'Latest Ruby 1.9.3 via RVM'

  requires :rvm_single_user

  runner "su deployer"
  runner "rvm install 1.9.3"

  verify do

  end
end