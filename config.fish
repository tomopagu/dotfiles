# Path to Oh My Fish install.
set -gx OMF_PATH "/Users/tomo/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/Users/tomo/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Remove Fish Greeting
# Zen Thought when starting Terminal
function fish_greeting
	command /usr/local/bin/zen-thought
end

export NOW_TOKEN=R272GDhMYReLRGcXBydp5CGb

# Set Path
set PATH /usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/local/go/bin:$HOME/Go/bin
set PATH "(brew --prefix homebrew/php/php70)/bin" $PATH
set PATH "/Users/tomo/.composer/vendor/bin" $PATH

# Set LANG
set -U LANG en_GB.UTF-8
# Set SSH
set -U SSH_KEY_PATH ~/.ssh/id_rsa
# caskroom
set -U HOMEBREW_CASK_OPTS "--appdir=~/Applications"

# GoPath
set -U GOPATH $HOME/Go/

# Set nvm_dir
set -gx NVM_DIR /Users/tomo/.nvm

# Servers
#alias vps="ssh root@dokku.pagu.co"
#alias irc="ssh root@dokku.pagu.co -t 'screen -r irc'"

# Work Servers
alias web1="mosh root@web1.ahead4.com"
alias gitlab="ssh root@dev.ahead4.com"

# Serving current folder on 0.0.0.0 from 8080 or a specifc port
function serve
	if count $argv > /dev/null
		php -S 0.0.0.0:$argv
	else
		php -S 0.0.0.0:8080
	end
end

# Streams
alias riotgames='livestreamer http://twitch.tv/riotgames'
alias jptv='livestreamer http://vaughnlive.tv/wgg001 best'

# Show/Hide hidden files + misc clear cmd
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias c='clear'
