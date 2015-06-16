#!/bin/bash
# we must provision twice because of a bug in the
# couchbase server recipie,
# see https://github.com/urbandecoder/couchbase/issues/26
set -e

vagrant up || true
vagrant provision
