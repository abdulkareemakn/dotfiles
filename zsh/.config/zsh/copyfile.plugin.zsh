# Copies the contents of a given file to the system or X Windows clipboard
#
# copyfile <file>
function cpf {
  emulate -L zsh
  wl-copy <"$1"
}
