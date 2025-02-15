if status is-interactive
    # Commands to run in interactive sessions can go here
end

# starship
starship init fish | source

# make Alt + l to accept current suggestion like using right arrow
bind \el forward-char

# Aliases
if [ -f $HOME/.config/fish/alias.fish ]
    source $HOME/.config/fish/alias.fish
end

function fish_greeting
    random choice "Hi Sonny Calcr!"
end

# Android Studio
set -x ANDROID_HOME $HOME/Android/Sdk
set -x PATH $PATH $ANDROID_HOME/emulator
set -x PATH $PATH $ANDROID_HOME/platform-tools

# do not use slow default handle when not the command we typed not found
function fish_command_not_found
    __fish_default_command_not_found_handler $argv
end
