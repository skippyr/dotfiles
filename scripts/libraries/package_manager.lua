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
	if IsInstalled(package) then
		return
	end
	local temporary_directory = "/tmp/" .. package
	os.execute(string.format(
		[[
			git clone --depth=1 %s %s;
			cd %s;
			makepkg -si --noconfirm;
			rm -rf %s
		]],
		GetAURUrl(package),
		temporary_directory,
		temporary_directory,
		temporary_directory
	))
end

function InstallSnap()
	local package = "snapd"
	if IsInstalled(package) then
		return
	end
	InstallPackages({package})
	CreateSymlinks("/var/lib/snapd/snap", {"/snap"}, true)
	ActivateServices({"snapd.socket", "snapd.apparmor"})
end

function InstallPackages(packages)
	InstallParu()
	os.execute(string.format(
		"sudo paru -Syu --noconfirm --needed %s",
		table.concat(packages, " ")
	))
end

