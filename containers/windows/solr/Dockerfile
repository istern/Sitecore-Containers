FROM windows-java-base


ENV SOLR_PATH "c:\solr\solr-5.4.0\server\solr"

RUN powershell (new-object System.Net.WebClient).Downloadfile('http://archive.apache.org/dist/lucene/solr/5.4.0/solr-5.4.0.zip','c:\solr-5.4.0.zip')
RUN powershell Expand-Archive -Path  "c:\solr-5.4.0.zip" -DestinationPath "c:\solr"
                            
COPY resources/schema.xml c:\schema.xml
#COPY resources/core.properties c:\core.properties
COPY resources/buildcores.ps1 c:\buildcores.ps1

RUN powershell c:\buildcores.ps1 

EXPOSE 8983

ENTRYPOINT "c:\\solr\\solr-5.4.0\\bin\\solr.cmd start -p 8983"