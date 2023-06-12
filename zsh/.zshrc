export PATH="${PATH}:${HOME}/.local/bin"
setopt promptsubst
function _skgeek::branch() {
	typeset -r branch=$(git branch --show-current 2>/dev/null)
	[[ -n "${branch}" ]] && echo " on %F{cyan}${branch}%f"
}
PROMPT='%F{yellow}%m%f in %F{red}%~%f$(_skgeek::branch)
%# '
