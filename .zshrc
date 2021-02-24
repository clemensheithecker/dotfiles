export PATH="/usr/local/sbin:$PATH"
export ZSH="/Users/clemens/.oh-my-zsh"

ZSH_THEME="robbyrussell"

DISABLE_UPDATE_PROMPT="true"

HIST_STAMPS="yyyy-mm-dd"

plugins=(
  copydir
  copyfile
  git
  last-working-dir
  npm
  osx
  z
)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh_aliases
source ~/.zsh_functions
