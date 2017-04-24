FROM microsoft/aspnet

ENV user _
ENV password _
ENV server _
ENV coredb _
ENV masterdb _
ENV webdb _


# Next, this Dockerfile creates a directory for your application
RUN mkdir C:\publishing
ADD /resources /resources

# configure the new site in IIS.
RUN powershell -NoProfile -Command \
    Import-module IISAdministration; \
    New-IISSite -Name "publishing" -PhysicalPath C:\publishing -BindingInformation "*:80:"; \
    Remove-IISSite -Name 'Default Web Site' -Confirm:$false;
	
RUN powershell -Command (Get-IISAppPool "DefaultAppPool" ).ManagedRuntimeVersion = ''

RUN powershell -Command Invoke-Expression ((New-Object Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
RUN powershell -Command Install-PackageProvider -Name chocolatey -Force
RUN powershell -Command choco install -y --params="Quiet" dotnetcore-windowshosting
	
# This instruction tells the container to listen on port 8000. 
EXPOSE 80

ENTRYPOINT powershell.exe -Command c:\Resources\configure.ps1