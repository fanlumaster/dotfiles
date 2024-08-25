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
