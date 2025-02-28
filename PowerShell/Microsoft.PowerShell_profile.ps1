Set-Alias -Name idea -Value idea64.exe
Set-Alias -Name lua -Value lua54.exe
Set-Alias -Name nvim -Value nvim.exe
Set-Alias -Name vi -Value hx
Set-Alias -Name cide -Value code-insiders.cmd
Set-Alias -Name code -Value code.cmd
Set-Alias -Name nide -Value neovide
Set-Alias -Name touch -Value New-Item
Set-Alias -Name reboot -Value Restart-Computer
$env:HTTP_PROXY="http://127.0.0.1:7890"
$env:HTTPS_PROXY="http://127.0.0.1:7890"
$env:NO_PROXY="localhost,127.0.0.1,::1,192.168.0.0/16"
Invoke-Expression (&starship init powershell)
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
# chcp 65001
# cls
# Set shortcuts mode
Set-PSReadLineOption -EditMode Emacs
# use Alt + l to replace right arrow when we need to receive suggestion
Set-PSReadLineKeyHandler -Chord "Alt+l" -Function ForwardChar # 接受一整行
Set-PSReadLineKeyHandler -Chord "Alt+f" -Function ForwardWord # 步进一个单词
# disable bell/beep sound
Set-PSReadlineOption -BellStyle None

function cdnvim()
{
  Set-Location $env:LOCALAPPDATA/nvim
}

function cdnvimdata()
{
  Set-Location $env:LOCALAPPDATA/nvim-data
}

function cdhexo
{
  Set-Location ~/HDisk/Hexo/fanlumaster/source/
}

function cdhugo
{
  Set-Location ~/HDisk/Hugo/SonnyCalcr/
}

function gitconfigfanlumaster()
{
  git config user.name "fanlumaster"
  git config user.email "1730976608@qq.com"
}

function gitconfigsonnycalcr()
{
  git config user.name "sonnycalcr"
  git config user.email "sonnycalcr@gmail.com"
}

function gitcm($msg)
{
  git commit -m "$msg"
}

function cdcaptures
{
  Set-Location "C:\Users\fanyfull\AppData\Roaming\PotPlayerMini64\Capture"
}

function cdpotplayercaptures
{
  Set-Location "C:\Users\fanyfull\AppData\Roaming\PotPlayerMini64\Capture"
}

function uuidgen_pwsh
{
  & 'C:\Program Files (x86)\Windows Kits\10\bin\10.0.22621.0\x64\uuidgen.exe'
}

# build and run cpp in windows
function llaunch
{
  .\llaunch.ps1
}

function lcompile
{
  .\lcompile.ps1
}

function lrun
{
  .\lrun.ps1
}
