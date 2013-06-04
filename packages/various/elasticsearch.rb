#
# Elasticsearch installation
#
package :elasticsearch do

  package_name = 'elasticsearch-0.90.1.deb'

  runner "wget https://download.elasticsearch.org/elasticsearch/elasticsearch/#{package_name}"
  runner "dpkg -i #{package_name}"
  runner "rm -f #{package_name}"

  verify do
    has_apt "elasticsearch"
  end
end