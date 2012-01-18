#!/usr/bin/env bash
rm README-get_iplayer.cgi.txt get_iplayer get_iplayer.1 get_iplayer.cgi
wget -c http://git.infradead.org/get_iplayer.git/blob_plain/HEAD:/README-get_iplayer.cgi.txt -O README-get_iplayer.cgi.txt
wget -c http://git.infradead.org/get_iplayer.git/blob_plain/HEAD:/get_iplayer -O get_iplayer
wget -c http://git.infradead.org/get_iplayer.git/history/HEAD:/get_iplayer.1 -O get_iplayer.1
wget -c http://git.infradead.org/get_iplayer.git/blob_plain/HEAD:/get_iplayer.cgi -O get_iplayer.cgi
chmod +x get_iplayer
chmod +x get_iplayer.cgi
