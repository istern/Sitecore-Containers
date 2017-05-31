FROM istern/iis-base

ADD https://go.microsoft.com/fwlink/?LinkId=746570&clcid=0x409 C:\vs_remotetools.exe

RUN C:\vs_remotetools.exe /quiet /norestart
   
ADD Resources/ /Resources

CMD C:\Resources\Start-RemoteDebug.ps1;