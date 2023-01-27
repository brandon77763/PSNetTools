$filename = $env:COMPUTERNAME + ' ' + $(get-date -f yyyy-MM-dd-hh-mm-ss)
$DesktopPath = [Environment]::GetFolderPath("Desktop")
$Commands2Run = @("systeminfo","getmac","ipconfig /all","arp -av","route print","netsh wlan show drivers","netsh wlan show interfaces","netsh wlan show networks mode=Bssid","netsh wlan show all","ping google.com") 
foreach  ($Command2 in $Commands2Run) { cmd.exe /c $Command2 | Out-String >> "$DesktopPath/$filename.txt" }
