# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/standard"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "standard"; then

  new_window "misc"
  run_cmd "sudo full-update"

  new_window "downloads"
  run_cmd "cd ~/Downloads/ && ll"

  select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
