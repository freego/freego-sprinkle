# Our Sprinkle scripts (work in progress)

## WAT.
<a href="https://github.com/crafterm/sprinkle">https://github.com/crafterm/sprinkle</a>

Sprinkle is a software provisioning tool you can use to build remote servers with. eg. to
install a Rails or Merb stack on a brand new slice directly after its been created. It uses
a Ruby based domain specific language to describe packages and policies to determine what
should be installed on particular systems.

Please see <a href="https://github.com/crafterm/sprinkle/blob/master/README.markdown">https://github.com/crafterm/sprinkle/blob/master/README.markdown</a> for more information.

## Usage:

    cp deploy.rb.example deploy.rb
    vim deploy.rb

    sprinkle -s policies/some_policy.rb -v