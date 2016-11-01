FROM windows-java-base


ENV SOLR_PATH "c:\solr\solr-5.3.0\server\solr"

RUN powershell (new-object System.Net.WebClient).Downloadfile('http://archive.apache.org/dist/lucene/solr/5.3.0/solr-5.3.0.zip','c:\solr-5.3.0.zip')
RUN powershell Expand-Archive -Path  "c:\solr-5.3.0.zip" -DestinationPath "c:\solr"

COPY resources/schema.xml c:\solr\solr-5.3.0\configsets/basic_configs/conf 
COPY resources/buildcores.ps1 c:\buildcores.ps1

RUN powershell c:\buildcores.ps1 

EXPOSE 8983

#CMD "c:\\solr\\solr-5.3.0\\bin\\solr.cmd start -f"

ENTRYPOINT "c:\\solr\\solr-5.3.0\\bin\\solr.cmd start -f"