function CreateSymlinks(origin, destinations, use_sudo)
	for _, destination in pairs(destinations) do
		os.execute(string.format(
			"%s ln -sf %s",
			use_sudo and "sudo" or "",
			origin,
			destination
		))
	end
end
