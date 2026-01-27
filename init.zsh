# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::jupyter::deps()
#
#>
######################################################################
p6df::modules::jupyter::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-python
  )
}

######################################################################
#<
#
# Function: p6df::modules::jupyter::vscodes()
#
#>
######################################################################
p6df::modules::jupyter::vscodes() {

  p6df::modules::vscode::extension::install ms-toolsai.jupyter

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::jupyter::langs()
#
#>
######################################################################
p6df::modules::jupyter::langs() {

  pip install jupyterlab
  pip install notebook
  pip install voila

  p6_return_void
}
