
#color
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[1;31m\]\u\[\033[0m\]@\[\033[1;32m\]\h\[\033[0m\]:\[\033[1;34m\]\w\[\033[0m\][\[\033[0;31m\]\d\[\033[0m\] \[\033[0;32m\]\t\[\033[0m\]]\\[\033[33m\]\$(parse_git_branch)\[\033[00m\] \n$ "

#android sdk
export PATH=${PATH}:$HOME/Android/Sdk/platform-tools
export PATH=${PATH}:$HOME/Android/Sdk/build-tools

#Locales
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US:en:zh_TW

