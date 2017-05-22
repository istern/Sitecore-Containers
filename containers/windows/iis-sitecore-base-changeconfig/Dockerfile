FROM istern/iis-sitecore-rtools

ENV user _
ENV password _
ENV server _
ENV mongoserver _

ADD Resources/configure.ps1 /Resources/configure.ps1

RUN powershell.exe -Command Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters' -Name ServerPriorityTimeLimit -Value 0 -Type DWord;

ENTRYPOINT powershell.exe -Command c:\Resources\configure.ps1