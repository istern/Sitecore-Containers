$user = $env:user
$password = $env:password
$server = $env:server
$coredb = $env:coredb
$masterdb = $env:masterdb
$webdb = $env:webdb


$core = '<core>user id='+$user+';password='+$password +';Data Source='+$server+';Database='+$coredb+';MultipleActiveResultSets=True;</core>'
$master = '<master>user id='+$user+';password='+$password +';Data Source='+$server+';Database='+$masterdb+';MultipleActiveResultSets=True;</master>'
$web = '<web>user id='+$user+';password='+$password +';Data Source='+$server+';Database='+$webdb+';MultipleActiveResultSets=True;</web>'

(Get-Content C:\resources\sc.global.xml) -replace('{CORE}',$core) | Set-Content C:\resources\sc.global.xml
(Get-Content C:\resources\sc.global.xml) -replace('{MASTER}',$master) | Set-Content C:\resources\sc.global.xml
(Get-Content C:\resources\sc.global.xml) -replace('{WEB}',$web) | Set-Content C:\resources\sc.global.xml

Copy-Item C:\resources\sc.global.xml c:\publishing\config\global\

(Get-IISAppPool "DefaultAppPool" ).ManagedRuntimeVersion = ""

c:\publishing\./Sitecore.Framework.Publishing.Host schema upgrade --force

C:\ServiceMonitor.exe w3svc