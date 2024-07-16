alias cls="clear"
alias py="python"
alias nide="neovide"

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
