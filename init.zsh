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

  code --install-plugin ms-toolsai.jupyter
  code --install-plugin ms-toolsai.jupyter-keymap
  code --install-plugin ms-toolsai.jupyter-renderers
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
}
