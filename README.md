# Jianing's dotfiles

To set things up on a new machine:

    git clone git@github.com:jali2019/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    ./setup.sh
    git submodule init
    git submodule update // or try git submodule update --init

Then, start vim and run `:BundleInstall`.

Optionally, run:

    install.sh
