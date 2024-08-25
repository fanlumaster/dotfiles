alias cls="clear"
alias py="python"
alias nide="neovide --fork"
alias start="open"
alias del="rm"

function cdnvim
  cd ~/.config/nvim/
end

function cdnvimdata
  cd ~/.local/share/nvim
end

function cdfish
  cd ~/.config/fish/
end

function gitcm
  git commit -m $argv
end

function cdhexo
  cd ~/HDisk/Hexo/fanlumaster
end

function cdhugo
  cd ~/HDisk/Hugo/SonnyCalcr
end

function cdcppprimer
  cd ~/EDisk/CppCodes/CppPrimer5th/
end

# compile and run cpp binary files
function llaunch
  #/home/fanyfull/EDisk/AlgoCodes/leetcode-records/Cpp/llaunch.sh
  ./llaunch.sh
end

# compile cpp binary files
function lcompile
  ./lcompile.sh
end

# compile cpp binary files
function lrun
  ./lrun.sh
end

# use .. to replace cd ../, and so on
function multicd
    echo cd (string repeat -n (math (string length -- $argv[1]) - 1) ../)
end
abbr --add dotdot --regex '^\.\.+$' --function multicd
