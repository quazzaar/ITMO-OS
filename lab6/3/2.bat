sc stop Dnscache
timeout /t 3
sc query | find "SERVICE_NAME" > newservices.txt
sc start Dnscache
pause
