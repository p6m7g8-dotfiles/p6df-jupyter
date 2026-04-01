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

  uv tool install jupyterlab
  uv tool install notebook
  uv tool install voila

  p6_return_void
}

######################################################################
#<
#
# Function: words jupyter $JUPYTER_PATH = p6df::modules::jupyter::profile::mod()
#
#  Returns:
#	words - jupyter $JUPYTER_PATH
#
#  Environment:	 JUPYTER_PATH
#>
######################################################################
p6df::modules::jupyter::profile::mod() {

  p6_return_words 'jupyter' '$JUPYTER_PATH'
}
