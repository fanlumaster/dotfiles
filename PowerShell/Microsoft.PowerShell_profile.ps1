Set-Alias -Name idea -Value idea64.exe
Set-Alias -Name lua -Value lua54.exe
Set-Alias -Name nvim -Value nvim.exe
Set-Alias -Name vi -Value hx
Set-Alias -Name cide -Value code-insiders.cmd
Set-Alias -Name code -Value code.cmd
Set-Alias -Name nide -Value neovide
Set-Alias -Name touch -Value New-Item
$env:HTTP_PROXY="http://127.0.0.1:7890"
$env:HTTPS_PROXY="http://127.0.0.1:7890"
$env:NO_PROXY="localhost,127.0.0.1,::1,192.168.0.0/16"
Invoke-Expression (&starship init powershell)
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
# chcp 65001
# cls
