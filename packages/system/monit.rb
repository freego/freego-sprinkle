#
# NOTE:
# you need to manually check and enable configurations in /etc/monit/conf.d
#
package :monit do

  files = %w{mongodb.conf.example mysql.conf.example nginx.conf.example
             postgresql.conf.example redis.conf.example rails_app.conf.example}

  apt 'monit' do
    pre :install, 'apt-get update'
  end

  files.each do |file|
    transfer "./configurations/monit/#{file}", "/etc/monit/conf.d/"
  end

  verify do
    has_apt "monit"
    files.each do |file|
      has_file "/etc/monit/conf.d/#{file}"
    end
  end

end