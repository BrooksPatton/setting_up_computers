# Set up zplug

if [[ ! -d ~/.zplug ]]; then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/init.zsh
fi

source ~/.zplug/init.zsh

# plugins go here

zplug "agkozak/agkozak-zsh-prompt"
zplug "popstas/zsh-command-time"
zplug "zsh-users/zsh-autosuggestions", defer:2
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search"
zplug "MikeDacre/tmux-zsh-vim-titles"
zplug "supercrabtree/k"
zplug "hlissner/zsh-autopair"
zplug "ael-code/zsh-colored-man-pages"
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/cargo", from:oh-my-zsh
zplug "plugins/rust", from:oh-my-zsh
zplug "lukechilds/zsh-nvm"
zplug "pkulev/zsh-rustup-completion", defer:2
zplug "lukechilds/zsh-better-npm-completion", defer:2

# end plugins

if ! zplug check; then
  zplug install
fi

zplug load

# Setting up environment variables

# aliases
if [[ "$OSTYPE" == "darwin"* ]]; then
  alias ls="ls -G"
fi

alias ll="ls -l"
alias la="ls -la"
