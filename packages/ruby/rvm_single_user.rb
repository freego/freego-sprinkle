# TODO
package :rvm_single_user do
  description 'Ruby Version Manager'
  requires :deployer_user, :curl

  runner "su deployer"
  runner "cd /home/deployer"
  runner "curl -L https://get.rvm.io | bash -s stable"

  verify do

  end
end