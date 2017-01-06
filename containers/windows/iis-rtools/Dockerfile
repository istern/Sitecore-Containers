FROM istern/iis-sitecore-base

SHELL ["powershell", "-NoProfile", "-Command", "$ErrorActionPreference = 'Stop';"] 

ADD https://go.microsoft.com/fwlink/?LinkId=615470&clcid=0x409 C:/rtools_setup_x64.exe

RUN C:\rtools_setup_x64.exe /quiet /norestart; \
    while(ps rtools*) { Start-Sleep -Seconds 5 }; \
    Remove-Item C:\rtools_setup_x64.exe -Force;
    
ADD Resources/ /Resources

CMD C:\Resources\Start-RemoteDebug.ps1;