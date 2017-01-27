FROM istern/windows-java-base

RUN powershell (new-object System.Net.WebClient).Downloadfile('http://archive.apache.org/dist/lucene/solr/5.4.0/solr-5.4.0.zip','c:\solr-5.4.0.zip')
RUN powershell Expand-Archive -Path  "c:\solr-5.4.0.zip" -DestinationPath "c:\solr"
                     
COPY resources/ /resources

RUN powershell c:\Resources\buildcores.ps1 
RUN powershell set-itemproperty -path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\DOS Devices' -Name 'D:' -Value '\??\C:\solrdata' -Type String

EXPOSE 8983

ENTRYPOINT powershell -Command "c:\\solr\\solr-5.4.0\\bin\\solr.cmd start -p 8983 -f"