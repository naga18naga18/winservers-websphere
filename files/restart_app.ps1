$server_name = "AppSrv02"
$user_name = "admin"
$user_password = "1234"

Set-Location "C:\Program Files\IBM\WebSphere\AppServer\profiles\$server_name\bin"
./wsadmin.bat -c "AdminControl.invoke(AdminControl.queryNames('type=ApplicationManager,process=server1,*'),'stopApplication','sample_war')" -user $user_name -password $user_password -lang jython
Start-Sleep -Seconds 10
./wsadmin.bat -c "AdminControl.invoke(AdminControl.queryNames('type=ApplicationManager,process=server1,*'),'startApplication','sample_war')" -user $user_name -password $user_password -lang jython
