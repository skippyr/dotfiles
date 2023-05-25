function paths::get_extension
{
	basename "${1}" |
	cut -f 1 -d "."
}

