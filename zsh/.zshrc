function add_directory_path_to_path() {
	typeset -r directory_path="$1"
	if [[ -d "${directory_path}" ]]; then
		export PATH="${PATH}:${directory_path}"
	fi
}

function source_theme() {
	typeset -r theme="$1"
	typeset -r themes_directory_path="${HOME}/.config/zsh/themes"
	source "${themes_directory_path}/${theme}/${theme}.zsh-theme"
}

add_directory_path_to_path "${HOME}/.local/bin"
source_theme "river_dreams"

alias l="reveal"
alias dl="docker ps -a"
alias dli="docker images"
alias drm="docker rm"
alias drmi="docker rmi"

