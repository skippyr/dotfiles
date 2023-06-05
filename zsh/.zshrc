export RIVER_DREAMS_USE_FALLBACK_TEXT=0

function add_to_path() {
	typeset -r directory_path="$1"
	if [[ -d "${directory_path}" ]]; then
		export PATH="${PATH}:${directory_path}"
	fi
}

function source_theme() {
	typeset -r theme_url="${1}"
	typeset -r theme_base_name="$(basename "${1}")"
	typeset -r theme_directory_path="${HOME}/.config/zsh/themes/${theme_base_name}"
	if [[ ! -d "${theme_directory_path}" ]]; then
		git clone --depth=1 "${theme_url}" "${theme_directory_path}"
	fi
	source "${theme_directory_path}/${theme_base_name}.zsh-theme"
}

add_to_path "${HOME}/.local/bin"
source_theme "https://github.com/skippyr/river_dreams"

alias l="reveal"
alias dl="docker ps -a"
alias dli="docker images"
alias drm="docker rm"
alias drmi="docker rmi"

