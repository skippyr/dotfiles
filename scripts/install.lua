require("./libraries/package_manager")
require("./libraries/shell")
require("./libraries/system")

InstallPackages({
	"base",
	"base-devel",
	"bspwm",
	"docker",
	"efibootmgr",
	"feh",
	"ffmpeg",
	"firefox",
	"grub",
	"i3lock",
	"imagemagick",
	"jre-openjdk",
	"linux",
	"linux-firmware",
	"lua",
	"luarocks",
	"neovim",
	"networkmanager",
	"nodejs",
	"npm",
	"pipewire",
	"pipewire-pulse",
	"ruby",
	"rustup",
	"sxhkd",
	"ttc-iosevka-ss08",
	"wireplumber",
	"xorg",
	"zsh",
	"kitty"
})
InstallSnap()
ChangeShell("zsh")
ActivateServices({"NetworkManager", "docker"})

