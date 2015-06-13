include_recipe 'build-essential'
include_recipe "nodejs"

include_recipe "couchbase::server"
include_recipe "couchbase::buckets"


nodejs_npm "forever"



