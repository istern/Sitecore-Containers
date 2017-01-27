$user = $env:user
$password = $env:password
$server = $env:server
$mongoserver = $env:mongoserver

$mongo = 'mongodb://'+$mongoserver+'/'

$coredb = '<add name="core" connectionString="user id='+$user+';password='+$password +';Data Source='+$server+';Database=Sitecore_Core" />'
$masterdb = '<add name="master" connectionString="user id='+$user+';password='+$password +';Data Source='+$server+';Database=Sitecore_Master" />'
$webdb = '<add name="web" connectionString="user id='+$user+';password='+$password +';Data Source='+$server+';Database=Sitecore_Web" />'
$reportingdb = '<add name="reporting" connectionString="user id='+$user+';password='+$password +';Data Source='+$server+';Database=Sitecore_Analytics" />'

Write-Host "Starting Replace in ConnectionStrings"
(Get-Content C:\Websites\Website\App_Config\ConnectionStrings.config) -replace('<add name="core" (.+?)>',$coredb) | Set-Content C:\Websites\Website\App_Config\ConnectionStrings.config 
(Get-Content C:\Websites\Website\App_Config\ConnectionStrings.config) -replace('<add name="master" (.+?)>',$masterdb) | Set-Content C:\Websites\Website\App_Config\ConnectionStrings.config 
(Get-Content C:\Websites\Website\App_Config\ConnectionStrings.config) -replace('<add name="web" (.+?)>',$webdb) | Set-Content C:\Websites\Website\App_Config\ConnectionStrings.config
(Get-Content C:\Websites\Website\App_Config\ConnectionStrings.config) -replace('<add name="reporting" (.+?)>',$reportingdb) | Set-Content C:\Websites\Website\App_Config\ConnectionStrings.config
(Get-Content C:\Websites\Website\App_Config\ConnectionStrings.config) -replace('(?i)mongodb(?-i)://(.+?)/',$mongo) | Set-Content C:\Websites\Website\App_Config\ConnectionStrings.config
Write-Host "Starting to update web.config"
(Get-Content C:\Websites\Website\App_Config\Sitecore.config)  -replace ('<sc.variable name="dataFolder" value=".*" />', '<sc.variable name="dataFolder" value="c:\Websites\Data" />')  | Set-Content C:\Websites\Website\App_Config\Sitecore.config
(Get-Content C:\Websites\Website\web.config).replace('<customErrors mode="RemoteOnly" />','<customErrors mode="Off" />') | Set-Content C:\Websites\Website\web.config

C:\Resources\Start-Remote.Debug.ps1; 
& "C:\ServiceMonitor.exe" "w3svc"