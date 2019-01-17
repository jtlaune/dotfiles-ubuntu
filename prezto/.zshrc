#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

#
# aliases
#

#
# virtualenvwrapper
#
export WORKON_HOME="~/.pythonenvs/"
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

#
# PATH
#
export PATH=$PATH:/snap/bin
export PATH=$PATH:/usr/local/visit/bin

#
# sicc prompt customization b
#
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=11'
