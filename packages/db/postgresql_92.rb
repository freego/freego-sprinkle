# package :postgresql_92 do
#   description 'PostgreSQL Database'

#   packages = %w{postgresql-9.2}

#   noop do
#     pre :install, 'apt-get update'
#   end

#   apt packages

#   verify do
#     packages.each { |p| has_apt p }
#   end
# end