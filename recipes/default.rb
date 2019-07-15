#
# Cookbook:: ruby_on_rails_with_passenger_dev_environment
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# Update the APT package manager
execute 'sudo apt update'

# Installs the following packages if not present: curl, gcc, g++, make
package 'curl'
package 'gcc'
package 'g++'
package 'make'

# Install stable Ruby via APT
package 'ruby-full'

# Install JavaScript runtime: Node.js
package 'nodejs'
execute 'sudo ln -sf /usr/bin/nodejs /usr/local/bin/node'

# Update gem to latest version
execute 'gem update --system'

# Install bundler for gem packages like Rails
execute 'gem install bundler --no-document'

# Install Ruby on Rails: 5.2.3
execute 'gem install rails -v 5.2.3'

# Install apt-vim for vim plugin management
execute 'curl -sL https://raw.githubusercontent.com/egalpin/apt-vim/master/install.sh | sh'

# Install NerdTree via apt-vim
# execute 'bash --login'
# execute 'apt-vim install -y https://github.com/scrooloose/nerdtree.git'

# Update system
execute ' sudo apt update'
execute 'sudo apt upgrade -y'
