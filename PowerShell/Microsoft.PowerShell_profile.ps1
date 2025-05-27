Set-Alias -Name idea -Value idea64.exe
Set-Alias -Name lua -Value lua54.exe
Set-Alias -Name nvim -Value nvim.exe
Set-Alias -Name vi -Value hx
Set-Alias -Name cide -Value code-insiders.cmd
Set-Alias -Name code -Value code.cmd
Set-Alias -Name nide -Value neovide
Set-Alias -Name touch -Value New-Item
Set-Alias -Name reboot -Value Restart-Computer
Set-Alias -Name codm -Value codium
Set-Alias -Name codi -Value codium
Set-Alias -Name ff -Value fastfetch
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

function cdnvim() {
  Set-Location $env:LOCALAPPDATA/nvim
}

function cdnvimdata() {
  Set-Location $env:LOCALAPPDATA/nvim-data
}

function cdime() {
  Set-Location $env:LOCALAPPDATA/DeerwritingBrush/log
}

function cdhexo {
  Set-Location ~/HDisk/Hexo/fanlumaster/
}

function cdhugo {
  Set-Location ~/HDisk/Hugo/SonnyCalcr/
}

function gitconfigfanlumaster() {
  git config user.name "fanlumaster"
  git config user.email "1730976608@qq.com"
}

function gitconfigsonnycalcr() {
  git config user.name "sonnycalcr"
  git config user.email "sonnycalcr@gmail.com"
}

function gitcm($msg) {
  git commit -m "$msg"
}

function cdcaptures {
  Set-Location "~\AppData\Roaming\PotPlayerMini64\Capture"
}

function cdpotplayercaptures {
  Set-Location "~\AppData\Roaming\PotPlayerMini64\Capture"
}

function zdeerwritingbrush {
  Set-Location "$HOME/EDisk/CppCodes/IMECodes/DeerWritingBrush"
}

function uuidgen_pwsh {
  & 'C:\Program Files (x86)\Windows Kits\10\bin\10.0.22621.0\x64\uuidgen.exe'
}

# build and run cpp in windows
function llaunch {
  .\scripts\llaunch.ps1
}

function lcompile {
  .\scripts\lcompile.ps1
}

function lrun {
  .\scripts\lrun.ps1
}


function cdadb {
  Set-Location("C:\Users\SonnyCalcr\AppData\Local\Android\Sdk\platform-tools")
}

function openRecycleBin {
  Start-Process shell:RecycleBinFolder
}

function rmForce($folder) {
  Remove-Item -Force -Recursive "$folder"
}

function cdBrush {
  Set-Location("C:\Program Files\DeerWritingBrush")
}

function refreshPath {
  $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") +
  ";" +
  [System.Environment]::GetEnvironmentVariable("Path","User")
}

function refreshProfile {
  .$PROFILE
}

function linstall {
  sudo regsvr32 .\DeerWritingBrush.dll
}

function luninstall {
  sudo regsvr32 /u .\DeerWritingBrush.dll
}
