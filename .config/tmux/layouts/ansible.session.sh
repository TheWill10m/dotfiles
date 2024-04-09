# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/code/repos/ansible"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "ansible"; then

  new_window "ansible"
  run_cmd "source .venv/bin/activate"

  new_window "git"
  run_cmd "code ."

  new_window "ssh"

  select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
