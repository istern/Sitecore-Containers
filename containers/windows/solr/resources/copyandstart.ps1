$solrHasBeenMove = Test-Path D:\solr
if(-Not ($solrHasBeenMove))
{
  Copy-Item -Path C:\solr -Destination d:\solr -recurse -Force
}

D:\solr\solr-5.4.0\bin\./solr.cmd start -p 8983 -f