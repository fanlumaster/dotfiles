if status is-interactive
    # Commands to run in interactive sessions can go here
end

# starship
starship init fish | source

# Aliases
if [ -f $HOME/.config/fish/alias.fish ]
    source $HOME/.config/fish/alias.fish
end

# 自定义的补全函数，将 script.sh 补全为 ./script.sh
complete -c llau -a '(echo bar\nbaz\nbiz)' -f

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

# function gitcm
#   git 
# end
