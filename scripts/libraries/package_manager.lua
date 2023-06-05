function IsInstalled(package)
	return os.execute(string.format(
		"pacman -Qi &>/dev/null %s",
		package
	))
end

function GetAURUrl(package)
	return string.format("https://aur.archlinux.org/%s.git", package)
end

function InstallParu()
	local package = "paru-bin"
	if not IsInstalled(package) then
		local aur_url = GetAURUrl(package)
		local temporary_directory = "/tmp/" .. package
		os.execute(string.format(
			[[
				git clone --depth=1 %s %s;
				cd %s;
				makepkg -si --noconfirm;
				rm -rf %s
			]],
			aur_url,
			temporary_directory,
			temporary_directory,
			temporary_directory
		))
	end
end

function InstallPackages(packages)
	InstallParu()
	os.execute(string.format(
		"sudo paru -Syu --noconfirm --needed %s",
		table.concat(packages, " ")
	))
end

