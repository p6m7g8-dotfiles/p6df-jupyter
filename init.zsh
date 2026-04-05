# shellcheck shell=bash
######################################################################
p6df::modules::jupyter::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-python
  )
}

######################################################################
p6df::modules::jupyter::langs() {

  uv tool install jupyterlab
  uv tool install notebook
  uv tool install voila

  p6_return_void
}
######################################################################
p6df::modules::jupyter::vscodes() {

  p6df::modules::vscode::extension::install ms-toolsai.jupyter

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::jupyter::deps()
#
#>
######################################################################
#<
#
# Function: p6df::modules::jupyter::vscodes()
#
#>
######################################################################
#<
#
# Function: p6df::modules::jupyter::langs()
#
#>
