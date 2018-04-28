function setup_completion() {
  local completion_dir=$HOME/.zsh/completion

  mkdir -p $completion_dir
  
  wget -O $completion_dir/git-completion.bash https://raw.github.com/git/git/master/contrib/completion/git-completion.bash 
  wget -O $completion_dir/_git https://raw.github.com/git/git/master/contrib/completion/git-completion.zsh  

  rm -f $HOME/.zcompdump
}

setup_completion
