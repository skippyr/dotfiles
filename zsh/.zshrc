export ZSH_DIRECTORY_PATH="${HOME}/.config/zsh"
export ZSH_LIBRARIES_DIRECTORY_PATH="${ZSH_DIRECTORY_PATH}/libraries"
export ZSH_THEMES_DIRECTORY_PATH="${ZSH_DIRECTORY_PATH}/themes"

for library in $(ls "${ZSH_LIBRARIES_DIRECTORY_PATH}"); do
	source "${ZSH_LIBRARIES_DIRECTORY_PATH}/${library}"
done

zsh::source_theme "river_dreams"

