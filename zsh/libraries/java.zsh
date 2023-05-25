function java::create_jar
{
	if [[ ${#@} -lt 2 ]]; then
		echo "error: not enough arguments."
		echo "usage: java::create_jar <main_class_file_path> <jar_file_path>"
		return
	fi
	typeset -r main_class_file_path="$(realpath "${1}")"
	typeset -r jar_file_path="$(realpath "${2}")"
	typeset -r src_directory_path="$(dirname "${main_class_file_path}")"
	typeset -r out_directory_path="$(dirname "${src_directory_path}")/out"
	rm -rf "${out_directory_path}"
	mkdir -p "${out_directory_path}"
	javac -cp "${src_directory_path}" -d "${out_directory_path}" "${main_class_file_path}"
	mkdir -p "$(dirname "${jar_file_path}")"
	jar -cfe "${jar_file_path}" "$(paths::get_extension "${main_class_file_path}")" -C "${out_directory_path}" .
	chmod +x "${jar_file}"
	rm -rf "${out_directory_path}"
}

function java::run
{
	if [[ ${#@} -lt 1 ]]; then
		echo "error: not enough arguments."
		echo "usage: java::run <main_class_file_path>"
		return
	fi
	typeset -r jar_file=".out.jar"
	java::create_jar "${1}" "${jar_file}"
	java -jar "${jar_file}"
	rm "${jar_file}"
}

