Copy-Item c:\schema.xml c:\solr\solr-5.4.0\server\solr\configsets\basic_configs\conf

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_core_index  
New-Item c:\solr\solr-5.4.0\server\solr\sitecore_core_index\core.properties -type file -value "name=sitecore_core_index" 

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_master_index 
New-Item c:\solr\solr-5.4.0\server\solr\sitecore_master_index\core.properties -type file -force -value "name=sitecore_master_index"

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_web_index  
New-Item c:\solr\solr-5.4.0\server\solr\sitecore_web_index\core.properties -type file -force -value "name=sitecore_web_index" 

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_fxm_master_index 
New-Item  c:\solr\solr-5.4.0\server\solr\sitecore_fxm_master_index\core.properties -type file -force -value "name=sitecore_fxm_master_index" 

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_fxm_web_index
New-Item  c:\solr\solr-5.4.0\server\solr\sitecore_fxm_web_index\core.properties  -type file -force -value "name=sitecore_fxm_web_index"

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_list_index 
New-Item c:\solr\solr-5.4.0\server\solr\sitecore_list_index\core.properties -type file -force -value "name=sitecore_list_index"

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_marketing_asset_index_master 
New-Item  c:\solr\solr-5.4.0\server\solr\sitecore_marketing_asset_index_master\core.properties  -Type file -force -value "name=sitecore_marketing_asset_index_master"

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_marketing_asset_index_web 
New-Item c:\solr\solr-5.4.0\server\solr\sitecore_marketing_asset_index_web\core.properties -Type file -force -value "name=sitecore_marketing_asset_index_web" 

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_marketingdefinitions_master 
New-Item c:\solr\solr-5.4.0\sitecore_marketingdefinitions_master\core.properties  -Type file -force -value "name=sitecore_marketingdefinitions_master"

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_marketingdefinitions_web 
New-Item c:\solr\solr-5.4.0\server\solr\sitecore_marketingdefinitions_web\core.properties  -Type file -force -value "name=sitecore_marketingdefinitions_web" 

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_marketingdefinitions_master
New-Item c:\solr\solr-5.4.0\server\solr\sitecore_marketingdefinitions_master\core.properties  -Type file -force -value "name=sitecore_marketingdefinitions_master" 

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_suggested_test_index 
New-Item c:\solr\solr-5.4.0\server\solr\sitecore_suggested_test_index\core.properties  -Type file -force -value "name=sitecore_suggested_test_index" 

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_testing_index 
New-Item  c:\solr\solr-5.4.0\server\solr\sitecore_testing_index\core.properties -Type file -force -value "name=sitecore_testing_index" 

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\social_messages_master 
New-Item c:\solr\solr-5.4.0\server\solr\social_messages_master\core.properties  -Type file -force -value "name=social_messages_master" 

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\\server\solr\social_messages_web 
New-Item c:\solr\solr-5.4.0\server\solr\social_messages_web\core.properties  -Type file -force -value "name=social_messages_web" 

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_analytics_index 
New-Item c:\solr\solr-5.4.0\server\solr\sitecore_analytics_index\core.properties  -Type file -force -value "name=sitecore_analytics_index" 

Copy-Item -recurse  c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_core_indexMainAlias 
New-Item c:\solr\solr-5.4.0\server\solr\sitecore_core_indexMainAlias\core.properties  -Type file -force -value "name=sitecore_core_indexMainAlias" 

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_master_indexMainAlias 
New-Item c:\solr\solr-5.4.0\server\solr\sitecore_master_indexMainAlias\core.properties  -Type file -force -value "name=sitecore_master_indexMainAlias" 

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_web_indexMainAlias 
New-Item  c:\solr\solr-5.4.0\server\solr\sitecore_web_indexMainAlias\core.properties -Type file -force -value "name=sitecore_web_indexMainAlias"