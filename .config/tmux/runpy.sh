tmuxrunpy() {
  tmux new-session -d -s temp_session "clear; python3 \"$1\"; read -n 1 -s -r -p 'Press any key to close...'; clear"
  tmux attach-session -t temp_session
}
