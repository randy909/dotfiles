# load zgen
source "${HOME}/.zgen/zgen.zsh"

PROJECT_PATHS=(~/src)

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/adb
    zgen oh-my-zsh plugins/brew
    zgen oh-my-zsh plugins/colored-man-pages
    zgen oh-my-zsh plugins/docker
    zgen oh-my-zsh plugins/docker-compose
    zgen oh-my-zsh plugins/fasd
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/gradle
    zgen oh-my-zsh plugins/jenv
    zgen oh-my-zsh plugins/maven
    zgen oh-my-zsh plugins/macos
    zgen oh-my-zsh plugins/pj
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/terraform
    zgen oh-my-zsh plugins/vim-interaction

    zgen load RobSis/zsh-completion-generator
    zgen load chrissicool/zsh-256color
    zgen load djui/alias-tips
    zgen load zsh-users/zsh-autosuggestions
    zgen load zsh-users/zsh-completions src
    zgen load zsh-users/zsh-history-substring-search
    zgen load zsh-users/zsh-syntax-highlighting

    # theme
    zgen load denysdovhan/spaceship-prompt spaceship

    # colors
    zgen load randy909/base16-shell base16-randy-darker.dark.sh

    # save all to init script
    zgen save
fi

if [[ -a ${HOME}/.zshrc.local ]]; then
    source "${HOME}/.zshrc.local"
fi
