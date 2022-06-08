$profile_name = "AppSrv02"
$server_name = "server1"
$user_name = "admin"
$user_password = "1234"

Set-Location "C:\Program Files\IBM\WebSphere\AppServer\profiles\$profile_name\bin"
./stopServer.bat $server_name -user $user_name -password $user_password
Start-Sleep -Seconds 10
./startServer.bat $server_name -user $user_name -password $user_password
