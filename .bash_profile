if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# PATH MODIFICATION from jgoodnow

# Strip bin/local from PATH (towards the end)
path_no_bin_local="$(echo $PATH | sed 's|:/usr/local/bin||g' | sed 's|:/usr/local/sbin||g')"

# Homebrew special binaries
PATH="/usr/local/sbin:$path_no_bin_local"

# Homebrew binaries
PATH="/usr/local/bin:$PATH"

# Ruby Gems
PATH="/usr/local/opt/ruby/bin:$PATH"

# Node Package Manager Modules (NPM)
PATH="/usr/local/share/npm/bin:$PATH"
PATH="$PATH:/usr/local/share/python"

export PATH

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
pyenv global 2.7.5


export GIT_EDITOR='/Applications/MacVim.app/Contents/MacOS/Vim -fg '
export GOOGLE_MAPS_KEY='AIzaSyA7VoFtBKmYLVgQ2M8v3PHtd9T4WWjfsZI'


