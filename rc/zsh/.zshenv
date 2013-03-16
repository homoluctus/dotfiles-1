###
### env define
###

export PATH="/usr/local/sbin:/usr/local/bin:$PATH"
export LANG='en_US.UTF-8'

# editor
export EDITOR=vim

#less color
export LESS='-R'

#PAGER
export PAGER='less'
export PATH="$HOME/bin:/usr/local/sbin:/usr/local/bin:$PATH:"

# Android 
if [ $(uname -s) = 'Darwin' ];then
    export ANDROID_SDK_ROOT=/Applications/android-sdk-macosx
    export ANDROID_HOME=/Applications/android-sdk-macosx
    export ANDROID_NDK_HOME=/usr/local/opt/android-ndk
fi

# tmux
if [ $(uname -s) = 'Darwin' ];then
    export TMUXPLATFORM='mac'
else
    export TMUXPLATFORM='linux'
fi
export TMUX_DEFAULTNAME='main'

### java
if [ $(uname -s) = 'Darwin' ];then
    export JAVA_HOME="/Library/Java/Home"
else
    export JAVA_HOME="/usr/local/java/Home"
fi
export PATH="$JAVA_HOME/bin:$PATH:"

### perl
# perlbrew
export PERLBREW_HOME=$HOME/perl5/perlbrew
if [ -f ${PERLBREW_HOME}/etc/bashrc ]; then
    export PATH="${PERLBREW_HOME}/bin:$PATH"
    source ${PERLBREW_HOME}/etc/bashrc
fi

### python
# pythonz
export PYTHONZ_HOME=$HOME/.pythonz
if [ -d ${PYTHONZ_HOME} ]; then
    source ~/.pythonz/etc/bashrc
fi
# virtualenvs
export WORKON_HOME=$HOME/.virtualenvs
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi


### ruby
#rbenv
export RBENV_HOME=$HOME/.rbenv
if [ -d ${RBENV_HOME} ];then
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
fi

### node.js
# nvm
if [ -f ~/.nvm/nvm.sh ]; then
    source ~/.nvm/nvm.sh
fi

#__END__
