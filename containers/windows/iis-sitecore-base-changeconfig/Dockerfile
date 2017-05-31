FROM istern/iis-sitecore-rtools

ENV user _
ENV password _
ENV server _
ENV mongoserver _

ADD Resources/configure.ps1 /Resources/configure.ps1

EXPOSE 80

ENTRYPOINT powershell.exe -Command c:\Resources\configure.ps1