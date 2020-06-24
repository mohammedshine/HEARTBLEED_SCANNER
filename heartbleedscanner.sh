cat domains.txt | while read line ; do echo "QUIT"| openssl s_client -connect $line:443 2>&1|grep 'server extension "heartbleed" (id=15)' || echo $line: safe; done
