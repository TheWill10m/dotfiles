# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/dotfiles"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "dotfiles"; then

	new_window "dotfiles"
	split_h 40
	split_v 50
	run_cmd "git status"

	select_pane 0
	run_cmd "code ."

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
