# Our Sprinkle scripts (work in progress)

We use this recipes for quick initial setup of our Ubuntu Linux-based servers.
Will install desired packages and comes with some pretty good example config files.

Currently focused on Ubuntu 12.04LTS Precise only but minimal/no changes needed for other deb based systems.

## WAT.
<a href="https://github.com/crafterm/sprinkle">https://github.com/crafterm/sprinkle</a>

Sprinkle is a software provisioning tool you can use to build remote servers with. eg. to
install a Rails or Merb stack on a brand new slice directly after its been created. It uses
a Ruby based domain specific language to describe packages and policies to determine what
should be installed on particular systems.

Please see <a href="https://github.com/crafterm/sprinkle/blob/master/README.markdown">https://github.com/crafterm/sprinkle/blob/master/README.markdown</a> for more information.

## Usage:
    # on new server machine: ensure root user can connect via ssh

    # on local machine:
    gem install sprinkle
    cp deploy.rb.example deploy.rb
    # edit deploy.rb with your server root credentials
    # edit policies/ubuntu_1204_standard_rails_stack.rb and enable what you need
    
    sprinkle -s policies/ubuntu_1204_standard_rails_stack.rb

    # when all done, disable root access via ssh, that's not good.
