function environment_variables::add_directory_to_path
{
	if [[ -d "${1}" ]]; then
		export PATH="${PATH}:${1}"
	fi
}

environment_variables::add_directory_to_path "${HOME}/.cargo"
environment_variables::add_directory_to_path "${HOME}/.local/bin"

