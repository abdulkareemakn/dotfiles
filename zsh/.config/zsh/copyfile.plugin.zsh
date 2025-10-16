# Copies the contents of a given file to the system or X Windows clipboard
#
# copyfile <file>
function copyfile {
  emulate -L zsh
  wl-copy -selection clipboard -in <"$1"
}
