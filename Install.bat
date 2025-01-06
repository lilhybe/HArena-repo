@echo off
certutil -urlcache -split -f "https://download.microsoft.com/download/1/7/1/1718CCC4-6315-4D8E-9543-8E28A4E18C4C/dxwebsetup.exe" %USERPROFILE%\Downloads\DirectX.exe
start /wait %USERPROFILE%\Downloads\DirectX.exe
certutil -urlcache -split -f "https://download.radmin-vpn.com/download/files/Radmin_VPN_1.4.4642.1.exe" %USERPROFILE%\Downloads\RadminVPN.exe
start /wait %USERPROFILE%\Downloads\RadminVPN.exe
certutil -urlcache -split -f "https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x64.exe"
start /wait %USERPROFILE%\Downloads\VCRedist_x64.exe
certutil -urlcache -split -f "https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x86.exe"
start /wait %USERPROFILE%\Downloads\VCRedist_x86.exe
echo Press any key to leave the script
pause
exit