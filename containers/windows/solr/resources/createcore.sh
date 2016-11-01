#!/bin/bash
name=$1
echo "Creating core $name"
cp -r /opt/solr/server/solr/configsets/basic_configs/ /opt/solr/server/solr/$name && \
echo name=$name > /opt/solr/server/solr/$name/core.properties
echo "Done Creating core $name"
exit