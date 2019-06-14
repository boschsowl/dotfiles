# Homebrew and Homebrew-Cask
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew tap caskroom/versions

# Z-Shell
brew install zsh zsh-completions
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Languages
brew cask install java
brew install python

# DEV tools
brew install node

# Apps
brew cask install google-chrome
brew cask install alfred

