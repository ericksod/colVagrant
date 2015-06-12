default['couchbase']['server']['edition'] = 'community'
default['couchbase']['server']['username'] = 'glasslab'
default['couchbase']['server']['password'] = 'glasslab'
default['couchbase']['server']['package_full_url'] = 'http://packages.couchbase.com/releases/3.0.1/couchbase-server-community_3.0.1-ubuntu12.04_amd64.deb'

default['couchbase']['buckets']['odin_data']['memory_quota_mb'] = 512
default['couchbase']['buckets']['odin_data']['replicas'] = false
default['couchbase']['buckets']['odin_data']['saslpassword'] = 'glasslab'

default['couchbase']['buckets']['odin_webapp']['memory_quota_mb'] = 512
default['couchbase']['buckets']['odin_webapp']['replicas'] = false
default['couchbase']['buckets']['odin_webapp']['saslpassword'] = 'glasslab'

default['couchbase']['buckets']['odin_user']['memory_quota_mb'] = 512
default['couchbase']['buckets']['odin_user']['replicas'] = false
default['couchbase']['buckets']['odin_user']['saslpassword'] = 'glasslab'
