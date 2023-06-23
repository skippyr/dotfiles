# Dotfiles

## Starting Point

The Dotfiles project contains my dotfiles for some applications. You can use
them to set them up quickly.

## Installation

### Neovim

My configuration files for Neovim set it up with a series of settings, plugins,
LSP servers and support for EditorConfig out of the box. To install it, follow
these steps:

* Copy the directory `nvim` to `~/.config/nvim`.
* Open Neovim. It is normal to receive an error in the first run, as the plugins
  will not be installed yet. You can skip them using `Enter`.
* Use the `:PackerSync` command to download the plugins and wait until all the
  processes have finished.
* Reopen Neovim. This time an error will be throw about the LSP servers not
  being installed yet. You can skip them using `Enter`. Wait until the `mason`
  plugin install all the LSP servers automatically.

  While waiting, you can use the `:Mason` command to check out the download
  status.

After finished all these operations, Neovim will be ready for you to use.

If you want to configure it, access the file `~/.config/nvim/init.lua` and
change whatever you need in the available options: you can set up default
indentation, color scheme, rulers, plugins and LSP servers.

More deeper settings will be hidden under `~/.config/nvim/lua`, such as the
plugin manager setup and LSP servers configuration. They are separeted of the
settings file so you do not accidentally mess them up, but you can change it if
you know how to use them.

Some settings for specific file types can be configured under
`~/.config/nvim/ftplugin`. Those files contains the indentation settings for
those file types, so you do not need to configure them manually every time you
enter them.

## Issues And Contributions

Learn how to report issues and contribute to this project by reading its
[contributions guidelines](https://skippyr.github.io/materials/pages/contributions_guidelines.html).

## License

This project is released under the terms of the MIT license. A copy of the
license is bundled with the source code.

Copyright (c) 2023, Sherman Rofeman. MIT license.

