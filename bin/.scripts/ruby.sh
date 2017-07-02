#!/bin/bash
source ~/devBox/bin/.scripts/utils.sh

cd ~
e_header "Let's build rbenv!"
git clone git://github.com/sstephenson/rbenv.git .rbenv
e_arrow "Making ruby-build"
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
e_arrow "Adjusting Profile and Path"
#echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /etc/profile.d/rbenv.sh
#echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh
source /etc/profile
e_success "Grabbing Ruby"
rbenv install 2.4.1
rbenv rehash
rbenv global 2.4.1

git config --global user.name "Gazaunga"
git config --global user.email "jeremy.ottley@gmail.com"
git config --global core.autocrlf input
git config --global core.safecrlf true

bundle install --path vendor/bundle 
e_underline "Read To Program With Ruby!"
