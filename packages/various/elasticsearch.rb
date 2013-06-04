#
# Elasticsearch installation
#
package :elasticsearch do

  package_name = 'elasticsearch-0.90.1.deb'
  packages = %w{openjdk-7-jre-headless}

  apt packages do
    pre :install, 'apt-get update'
  end

  runner "wget https://download.elasticsearch.org/elasticsearch/elasticsearch/#{package_name}"
  runner "dpkg -i #{package_name}"
  runner "rm -f #{package_name}"

  verify do
    has_apt "elasticsearch"
    packages.each { |p| has_apt p }
  end
end