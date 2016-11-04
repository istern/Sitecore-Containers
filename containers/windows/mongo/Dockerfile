FROM microsoft/windowsservercore

RUN powershell (new-object System.Net.WebClient).Downloadfile('http://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-latest-signed.msi?_ga=1.51584937.1611990321.1476433951','c:\mongodb-win32-x86_64-2008plus-ssl-3.2.10-signed.msi')
RUN powershell New-Item c:\Data -type directory 
RUN powershell New-Item c:\Logs -type directory                        
RUN msiexec.exe /q /i c:\mongodb-win32-x86_64-2008plus-ssl-3.2.10-signed.msi INSTALLLOCATION="C:\MongoDB\Server" ADDLOCAL="all"
EXPOSE 27017

ENTRYPOINT C:\MongoDB\Server\bin\mongod.exe --dbpath c:\Data\ --logpath c:\Logs\mongolog.txt