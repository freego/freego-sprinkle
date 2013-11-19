#
# logrotate config for rails apps
#
package :logrotate_rails do
  package = 'logrotate'
  file = '/etc/logrotate.d/rails'

  apt package
  transfer './configurations/logrotate/rails', file

  verify do
    has_apt package
    has_file file
  end
end