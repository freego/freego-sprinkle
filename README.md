# Our Sprinkle scripts (work in progress)

We use this for quick and reproducible setup of our Ubuntu Linux-based servers.
Currently tested only on Ubuntu 12.04LTS Precise.

## WAT.
<a href="https://github.com/crafterm/sprinkle">https://github.com/crafterm/sprinkle</a>

Sprinkle is a software provisioning tool you can use to build remote servers with. eg. to
install a Rails or Merb stack on a brand new slice directly after its been created. It uses
a Ruby based domain specific language to describe packages and policies to determine what
should be installed on particular systems.

Please see <a href="https://github.com/crafterm/sprinkle/blob/master/README.markdown">https://github.com/crafterm/sprinkle/blob/master/README.markdown</a> for more information.

## Usage:
    # on server machine: ensure root user can connect via ssh

    # on local machine:
    gem install sprinkle

    cp deploy.rb.example deploy.rb
    vim deploy.rb # edit with your server root credentials
    vim policies/ubuntu_1204_standard_rails_stack.rb # enable what you want
    
    sprinkle -s policies/ubuntu_1204_standard_rails_stack.rb -v