if [ -f ~/.bash_profile ]; then
  cp ~/.bash_profile{,.bak}
fi

yes | cp -rf ./bash_profile ~/.bash_profile
source ~./bash_profile
 
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install $(cat ./brew_list.txt)
brew cask install chefdk
brew cask install vagrant
