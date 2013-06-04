#
# NOTE:
# you need to manually check and enable configurations in /etc/shorewall
#
package :shorewall do

  description 'The shorewall firewall'

  files = %w{interfaces policy rules zones}

  apt 'shorewall'

  files.each do |file|
    transfer "./configurations/shorewall/#{file}", "/etc/shorewall/#{file}.example"
  end
  replace_text "startup=0", "startup=1", "/etc/default/shorewall"

  verify do
    has_apt "shorewall"
    files.each do |file|
      has_file "/etc/shorewall/#{file}.example" or has_file "/etc/shorewall/#{file}"
    end
    file_contains "/etc/default/shorewall", "startup=1"
  end

end