Copy-Item c:\resources\schema.xml c:\solr\solr-5.4.0\server\solr\configsets\basic_configs\conf
Copy-Item c:\resources\core.properties c:\solr\solr-5.4.0\server\solr\configsets\basic_configs\core.properties

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_core_index  
#New-Item c:\solr\solr-5.4.0\server\solr\sitecore_core_index\core.properties -type file -value "sitecore_core_index" 
(Get-Content "c:\solr\solr-5.4.0\server\solr\sitecore_core_index\core.properties") -Replace("{name}","sitecore_core_index") | Set-Content c:\solr\solr-5.4.0\server\solr\sitecore_core_index\core.properties

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_master_index 
#New-Item c:\solr\solr-5.4.0\server\solr\sitecore_master_index\core.properties -type file -force -value "sitecore_master_index"
(Get-Content "c:\solr\solr-5.4.0\server\solr\sitecore_master_index\core.properties") -Replace("{name}","sitecore_master_index") | Set-Content c:\solr\solr-5.4.0\server\solr\sitecore_master_index\core.properties

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_web_index  
#New-Item c:\solr\solr-5.4.0\server\solr\sitecore_web_index\core.properties -type file -force -value "sitecore_web_index" 
(Get-Content "c:\solr\solr-5.4.0\server\solr\sitecore_web_index\core.properties") -Replace("{name}","sitecore_web_index") | Set-Content c:\solr\solr-5.4.0\server\solr\sitecore_web_index\core.properties

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_fxm_master_index 
#New-Item  c:\solr\solr-5.4.0\server\solr\sitecore_fxm_master_index\core.properties -type file -force -value "sitecore_fxm_master_index" 
(Get-Content "c:\solr\solr-5.4.0\server\solr\sitecore_fxm_master_index\core.properties") -Replace("{name}","sitecore_fxm_master_index") | Set-Content c:\solr\solr-5.4.0\server\solr\sitecore_fxm_master_index\core.properties

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_fxm_web_index
#New-Item  c:\solr\solr-5.4.0\server\solr\sitecore_fxm_web_index\core.properties  -type file -force -value "sitecore_fxm_web_index"
(Get-Content "c:\solr\solr-5.4.0\server\solr\sitecore_fxm_web_index\core.properties") -Replace("{name}","sitecore_fxm_web_index") | Set-Content c:\solr\solr-5.4.0\server\solr\sitecore_fxm_web_index\core.properties

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_list_index 
#New-Item c:\solr\solr-5.4.0\server\solr\sitecore_list_index\core.properties -type file -force -value "sitecore_list_index"
(Get-Content "c:\solr\solr-5.4.0\server\solr\sitecore_list_index\core.properties") -Replace("{name}","sitecore_list_index") | Set-Content c:\solr\solr-5.4.0\server\solr\sitecore_list_index\core.properties

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_marketing_asset_index_master 
#New-Item  c:\solr\solr-5.4.0\server\solr\sitecore_marketing_asset_index_master\core.properties  -Type file -force -value "sitecore_marketing_asset_index_master"
(Get-Content "c:\solr\solr-5.4.0\server\solr\sitecore_marketing_asset_index_master\core.properties") -Replace("{name}","sitecore_marketing_asset_index_master") | Set-Content c:\solr\solr-5.4.0\server\solr\sitecore_marketing_asset_index_master\core.properties

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_marketing_asset_index_web 
#New-Item c:\solr\solr-5.4.0\server\solr\sitecore_marketing_asset_index_web\core.properties -Type file -force -value "sitecore_marketing_asset_index_web" 
(Get-Content "c:\solr\solr-5.4.0\server\solr\sitecore_marketing_asset_index_web\core.properties") -Replace("{name}","sitecore_marketing_asset_index_web") | Set-Content c:\solr\solr-5.4.0\server\solr\sitecore_marketing_asset_index_web\core.properties

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_marketingdefinitions_master 
#New-Item c:\solr\solr-5.4.0\sitecore_marketingdefinitions_master\core.properties  -Type file -force -value "sitecore_marketingdefinitions_master"
(Get-Content "c:\solr\solr-5.4.0\server\solr\sitecore_marketingdefinitions_master\core.properties") -Replace("{name}","sitecore_marketingdefinitions_master") | Set-Content c:\solr\solr-5.4.0\server\solr\sitecore_marketingdefinitions_master\core.properties

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_marketingdefinitions_web 
#New-Item c:\solr\solr-5.4.0\server\solr\sitecore_marketingdefinitions_web\core.properties  -Type file -force -value "sitecore_marketingdefinitions_web" 
(Get-Content "c:\solr\solr-5.4.0\server\solr\sitecore_marketingdefinitions_web\core.properties") -Replace("{name}","sitecore_marketingdefinitions_web") | Set-Content c:\solr\solr-5.4.0\server\solr\sitecore_marketingdefinitions_web\core.properties

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_marketingdefinitions_core
#New-Item c:\solr\solr-5.4.0\server\solr\sitecore_marketingdefinitions_core\core.properties  -Type file -force -value "sitecore_marketingdefinitions_core" 
(Get-Content "c:\solr\solr-5.4.0\server\solr\sitecore_marketingdefinitions_core\core.properties") -Replace("{name}","sitecore_marketingdefinitions_core") | Set-Content c:\solr\solr-5.4.0\server\solr\sitecore_marketingdefinitions_core\core.properties

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_suggested_test_index 
#New-Item c:\solr\solr-5.4.0\server\solr\sitecore_suggested_test_index\core.properties  -Type file -force -value "sitecore_suggested_test_index" 
(Get-Content "c:\solr\solr-5.4.0\server\solr\sitecore_suggested_test_index\core.properties") -Replace("{name}","sitecore_suggested_test_index") | Set-Content c:\solr\solr-5.4.0\server\solr\sitecore_suggested_test_index\core.properties

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_testing_index 
#New-Item  c:\solr\solr-5.4.0\server\solr\sitecore_testing_index\core.properties -Type file -force -value "sitecore_testing_index" 
(Get-Content "c:\solr\solr-5.4.0\server\solr\sitecore_testing_index\core.properties") -Replace("{name}","sitecore_testing_index") | Set-Content c:\solr\solr-5.4.0\server\solr\sitecore_testing_index\core.properties

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\social_messages_master 
#New-Item c:\solr\solr-5.4.0\server\solr\social_messages_master\core.properties  -Type file -force -value "social_messages_master" 
(Get-Content "c:\solr\solr-5.4.0\server\solr\social_messages_master\core.properties") -Replace("{name}","social_messages_master") | Set-Content c:\solr\solr-5.4.0\server\solr\social_messages_master\core.properties

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\\server\solr\social_messages_web 
#New-Item c:\solr\solr-5.4.0\server\solr\social_messages_web\core.properties  -Type file -force -value "social_messages_web" 
(Get-Content "c:\solr\solr-5.4.0\server\solr\social_messages_web\core.properties") -Replace("{name}","social_messages_web") | Set-Content c:\solr\solr-5.4.0\server\solr\social_messages_web\core.properties

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_analytics_index 
#New-Item c:\solr\solr-5.4.0\server\solr\sitecore_analytics_index\core.properties  -Type file -force -value "sitecore_analytics_index" 
(Get-Content "c:\solr\solr-5.4.0\server\solr\sitecore_analytics_index\core.properties") -Replace("{name}","sitecore_analytics_index") | Set-Content c:\solr\solr-5.4.0\server\solr\sitecore_analytics_index\core.properties

Copy-Item -recurse  c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_core_indexMainAlias 
#New-Item c:\solr\solr-5.4.0\server\solr\sitecore_core_indexMainAlias\core.properties  -Type file -force -value "sitecore_core_indexMainAlias" 
(Get-Content "c:\solr\solr-5.4.0\server\solr\sitecore_core_indexMainAlias\core.properties") -Replace("{name}","sitecore_core_indexMainAlias") | Set-Content c:\solr\solr-5.4.0\server\solr\sitecore_core_indexMainAlias\core.properties

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_master_indexMainAlias 
#New-Item c:\solr\solr-5.4.0\server\solr\sitecore_master_indexMainAlias\core.properties  -Type file -force -value "sitecore_master_indexMainAlias" 
(Get-Content "c:\solr\solr-5.4.0\server\solr\sitecore_master_indexMainAlias\core.properties") -Replace("{name}","sitecore_master_indexMainAlias") | Set-Content c:\solr\solr-5.4.0\server\solr\sitecore_master_indexMainAlias\core.properties

Copy-Item -recurse c:\solr\solr-5.4.0\server\solr\configsets\basic_configs c:\solr\solr-5.4.0\server\solr\sitecore_web_indexMainAlias 
#New-Item  c:\solr\solr-5.4.0\server\solr\sitecore_web_indexMainAlias\core.properties -Type file -force -value "sitecore_web_indexMainAlias"
(Get-Content "c:\solr\solr-5.4.0\server\solr\sitecore_web_indexMainAlias\core.properties") -Replace("{name}","sitecore_web_indexMainAlias") | Set-Content c:\solr\solr-5.4.0\server\solr\sitecore_web_indexMainAlias\core.properties


Remove-Item c:\solr\solr-5.4.0\server\solr\configsets\ -recurse