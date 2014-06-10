# vim:set et sw=2 sts=2:
if [ -n "${BASH_VERSION}" ]; then
  # include rcfile.
  if [ -f "${HOME}/.bash/rc" ]; then
    . "${HOME}/.bash/rc"
  fi
fi

if [ -d "${HOME}/local/bin" ]; then
  PATH="${HOME}/local/bin:${PATH}"
fi
