@ECHO OFF
REM
REM Hashcat discussion threads: 
REM http://hashcat.net/forum/thread-3818.html
REM http://hashcat.net/forum/thread-4105-post-23378.html
REM

pdf2john.py %1 |  sed "s/::.*$//" | sed "s/^.*://" > %1-hash.txt
