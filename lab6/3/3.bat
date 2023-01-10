sc stop Dnscache
timeout /t 5
sc queryex type=service state=all | find "SERVICE_NAME" > services2.txt
sc start Dnscache