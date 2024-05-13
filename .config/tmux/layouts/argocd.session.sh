# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/code/repos/argocd"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "argocd"; then

  # Create a new window inline within session layout definition.
  new_window "git"
  
  new_window "kube"
  run_cmd "kubectl get node"

  select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
