# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/code/repos/hostname-manager"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "hostname-manager"; then

  new_window "git"
  run_cmd "git status"
  split_v 20
  run_cmd ". .venv/bin/activate"

  new_window "nvim"
  run_cmd "vim"

  new_window "api"
  run_cmd "cd api/ && . .venv/bin/activate"
  split_v 160
  run_cmd "dc up -d --build"
  split_h 50


  select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
