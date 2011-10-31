export LANG="zh_CN.GBK"
export OUTPUT_CHARSET="GBK"

export PATH="$HOME/bin:$PATH"

for f in ~/dotbash/.profile.d/*.sh; do
	if [ -f $f ]; then
		. $f
	fi
done

for f in ~/dotbash/lib/*.sh; do
	if [ -f $f ]; then
		. $f
	fi
done

# fix chinese dir
alias l='/bin/ls --show-control-chars --color=tty'
alias la='/bin/ls -aF --show-control-chars --color=tty'
alias ll='/bin/ls -alF --show-control-chars --color=tty'
alias ls='/bin/ls --show-control-chars -F --color=tty'

export C_INCLUDE_PATH=/usr/include:/mingw/include
export LIBRARY_PATH=/usr/lib:/mingw/lib

# if [ -z "$PKG_CONFIG" ]; then
#   export PKG_CONFIG=/path/to/pkg-config.exe
# fi
 
if [ -z "$PKG_CONFIG_PATH" ]; then
  export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/lib/pkgconfig:/mingw/lib/pkgconfig
fi

alias G='git'
