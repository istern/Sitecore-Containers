FROM microsoft/iis

RUN mkdir C:\Websites
RUN mkdir C:\Websites\Website

RUN powershell -Command Add-WindowsFeature NET-Framework-45-ASPNET; \
    powershell -Command Add-WindowsFeature Web-Asp-Net45; \
    powershell -NoProfile -Command \
    Import-module IISAdministration; \
    New-IISSite -Name SitecoreSite -PhysicalPath C:\Websites\Website -BindingInformation "*:80:" 

RUN powershell -Command Remove-IISSite -Name 'Default Web Site' -Confirm:$false;

RUN powershell -Command Remove-Item C:\Websites\Website

EXPOSE 80