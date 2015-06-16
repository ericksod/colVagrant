include_recipe 'build-essential'
include_recipe "nodejs"

include_recipe "couchbase::server"
include_recipe "couchbase::buckets"
include_recipe "git"

nodejs_npm "forever"

nodejs_npm "grunt-cli" do
  options ['--save-dev']
end


