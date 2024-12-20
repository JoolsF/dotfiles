# Search current dir dotfiles
rg_current_dir_dot() {
  rg --glob '.*' --maxdepth 1 "$1"
}

