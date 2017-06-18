# Path to Oh My Fish install.
set -gx OMF_PATH "/Users/tomo/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/Users/tomo/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Add SSH Key & Zen Thought when starting Terminal
function fish_greeting
	command ssh-add -K ~/.ssh/id_rsa
	command /usr/local/bin/zen-thought
end

export NOW_TOKEN=

# Set Path
set PATH "/usr/local/bin"
set PATH $PATH "/usr/bin"
set PATH $PATH "/bin"
set PATH $PATH "/usr/local/sbin"
set PATH $PATH "/usr/sbin"
set PATH $PATH "/sbin"
set PATH $PATH "(brew --prefix homebrew/php/php70)/bin"
set PATH $PATH "/Users/tomo/.composer/vendor/bin"

# Set LANG
set -U LANG en_GB.UTF-8
# Set SSH
set -U SSH_KEY_PATH ~/.ssh/id_rsa
# caskroom
set -U HOMEBREW_CASK_OPTS "--appdir=~/Applications"

# Set nvm_dir
set -gx NVM_DIR /Users/tomo/.nvm

# Quick CDs
alias web='cd ~/Web'

# Streams
alias riotgames='livestreamer http://twitch.tv/riotgames'
alias jptv='livestreamer http://vaughnlive.tv/wgg001 best'

# Show/Hide hidden files + misc clear cmd
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias c='clear'

## RBENV
status --is-interactive; and source (rbenv init -|psub)