FROM istern/iis-sitecore-base-changeconfig

ENV user _
ENV password _
ENV server _
ENV mongoserver _
ENV solrserver _

ADD Resources/enablesolr.ps1 /Resources/enablesolr.ps1

ENTRYPOINT powershell.exe -Command c:\Resources\enablesolr.ps1