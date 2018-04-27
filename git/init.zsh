function setup_completion() {
  local completion_dir=$HOME/.zsh/completion

  mkdir -p $completion_dir
  
  curl -o $completion_dir/git-completion.bash -O https://raw.github.com/git/git/master/contrib/completion/git-completion.bash 
  curl -o $completion_dir/_git -O https://raw.github.com/git/git/master/contrib/completion/git-completion.zsh 

  rm -f $HOME/.zcompdump
}

setup_completion
