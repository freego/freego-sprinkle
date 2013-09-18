# Our Sprinkle recipes

We use these scripts for quick and reproducible initial setup of our Ubuntu
Linux-based servers.
Desired packages will be installted and some example config files will be copied
(but not automatically enabled).

This is currently for Ubuntu 12.04 LTS, some changes may be needed for other
debian based systems.

## SprinkWAT.

<a href="https://github.com/crafterm/sprinkle">https://github.com/crafterm/sprinkle</a>

Sprinkle is a software provisioning tool you can use to build remote servers with. eg. to
install a Rails or Merb stack on a brand new slice directly after its been created. It uses
a Ruby based domain specific language to describe packages and policies to determine what
should be installed on particular systems.

Please see <a href="https://github.com/crafterm/sprinkle/blob/master/README.markdown">https://github.com/crafterm/sprinkle/blob/master/README.markdown</a> for more information.

## Usage:

    # on the new server machine:
    # just ensure root user can login via ssh.

    # on the local machine:
    gem install sprinkle
    cp deploy.rb.example deploy.rb
    # edit deploy.rb with your server root credentials.
    # edit policies/ubuntu_1204_standard_rails_stack.rb and enable what you want.

    sprinkle -s policies/ubuntu_1204_standard_rails_stack.rb

    # when all done, disable root access via ssh, that's not good.



Copyright (c) 2013 freego http://freegoweb.it - Released under the WTFPL License

