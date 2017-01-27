$solrserver = $env:solrserver

$solrserverconnectionstring = '<setting name="ContentSearch.Solr.ServiceBaseAddress" value="http://'+$solrserver+':8983/solr" />'

Write-Host "Starting renaming lucene"
Get-ChildItem -Path "C:\Websites\Website\App_Config" -Filter "*lucene*.config" -Recurse | Rename-Item -NewName {$_.name -replace "\.config",".config.disabled" }

Write-Host "Starting renaming solr"
Get-ChildItem -Path "C:\Websites\Website\App_Config" -Filter "*solr*.config*" -Recurse | Rename-Item -NewName {$_.name -replace "\.config\..*",".config" }


Write-Host "Disable switch solr"
Rename-Item C:\Websites\Website\App_Config\Include\Sitecore.ContentSearch.SolrCloud.SwitchOnRebuild.config C:\Websites\Website\App_Config\Include\Sitecore.ContentSearch.SolrCloud.SwitchOnRebuild.config.disabled

(Get-Content C:\Websites\Website\App_Config\Include\Sitecore.ContentSearch.Solr.DefaultIndexConfiguration.config) -replace('(?i)<setting name="ContentSearch.Solr.ServiceBaseAddress" value=(?-i)".+?" />',$solrserverconnectionstring) | Set-Content C:\Websites\Website\App_Config\Include\Sitecore.ContentSearch.Solr.DefaultIndexConfiguration.config



C:\Resources\configure.ps1; 
& "C:\ServiceMonitor.exe" "w3svc"