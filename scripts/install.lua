require("./libraries/package_manager")

local packages = {
	"bspwm",
	"efibootmgr",
	"feh",
	"firefox",
	"grub",
	"jre-openjdk",
	"neovim",
	"networkmanager",
	"nodejs",
	"npm",
	"sxhkd",
	"xorg"
}
InstallParu()
InstallPackages(packages)

