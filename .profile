# vim:set et sw=2 sts=2:

if [ -n ${BASH_VERSION} ]; then
  # include rcfile.
  if [ -f ~/.bash/rc ]; then
    . ~/.bash/rc
  fi
fi

if [ -d ~/usr/bin ]; then
  PATH=~/usr/bin:${PATH}
fi
