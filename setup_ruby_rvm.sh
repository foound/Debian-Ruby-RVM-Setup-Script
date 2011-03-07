#!/bin/sh
apt-get install git-core
apt-get install autoconf
apt-get install zlib-devel
apt-get install bison
apt-get install openssl
apt-get install ruby-full build-essential
bash < <( curl http://rvm.beginrescueend.com/releases/rvm-install-head )
rvm install 1.9.2-head
rvm use 1.9.2-head
rvm install bundler
wget http://production.cf.rubygems.org/rubygems/rubygems-1.6.1.tgz
tar xvzf rubygems-1.6.1.tgz 
cd rubygems-1.6.1
ruby setup.rb
ln -s /usr/bin/gem1.8 /usr/bin/gem
mv /usr/bin/gem /usr/bin/gem_alternative
gem install rake
