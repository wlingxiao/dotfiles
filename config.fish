# ~/.config/fish/config.fish

if status is-interactive
    # Commands to run in interactive sessions can go here

    ### bling.sh source start
    test -f /usr/share/bazzite-cli/bling.fish && source /usr/share/bazzite-cli/bling.fish
    ### bling.sh source end
end
