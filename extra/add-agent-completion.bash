_add_agent() {
	local cur=${COMP_WORDS[COMP_CWORD]}
	ids="$(cd ~/.ssh && ls *.pub|while read f; do echo ${f%.pub}; done)"
	COMPREPLY=( $(compgen -W "$ids" -- $cur) )
}
complete -F _add_agent add_agent
