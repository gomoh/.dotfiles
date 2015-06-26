# vim:set et sw=2 sts=2:

if [ -n ${BASH_VERSION} ]; then
  # include rcfile.
  [ -f ~/.bash/rc ] && . ~/.bash/rc
fi

[ -d ~/usr/bin ]        && PATH=~/usr/bin:${PATH}
[ -d ~/usr/sbin ]       && PATH=~/usr/sbin:${PATH}
[ -d ~/usr/local/bin ]  && PATH=~/usr/local/bin:${PATH}
[ -d ~/usr/local/sbin ] && PATH=~/usr/local/sbin:${PATH}
