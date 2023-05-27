<h1>Dotfiles</h1>
	<h2>Starting Point</h2>
		<p>My dotfiles for various applications.</p>
	<h2>Installation And Usage</h2>
		<h3>Kitty</h3>
			<p>Make Kitty have a bit different look than its default one.</p>
			<ul>
				<li>Copy the <code>kitty</code> from this repository to <code>~/.config/kitty</code>.</li>
					<p>Assuming that you are on the root directory of the repository:</p>
					<pre><code>
mkdir -p ~/.config
cp -r kitty ~/.config
					</code></pre>
				<li>Optionally, install the <a href="https://github.com/skippyr/flamerial">Flamerial</a> theme and <a href="https://github.com/ryanoasis/nerd-fonts/releases">Iosevka Nerd Font</a> font.</li>
					<p>Those are the default theme and font used in the configuration, you can install them or configure others that you might like in the <code>~/.config/kitty/kitty.conf</code> file.</p>
					<p>You can find more information about how to configure Kitty in its <a href="https://sw.kovidgoyal.net/kitty/conf/">official website</a>.</p>
			</ul>
		<h3>Neovim</h3>
			<p>Skip some annoying steps when building your Neovim configuration with LSP servers by using my configuration files as a base to yours.</p>
			<p>Let's get through the steps to, at least, make it run.</p>
			<ul>
				<li>Install the latest version of Neovim.</li>
					<p>The latest version is required to run the plugins.<p>
					<p>Normally, only bleeding-edge Linux distributions will have this condition met: like ArchLinux or Geentoo. If you are using other distributions, like Ubuntu or PopOS!, which are rolling-release, or even MacOS, you will need to install it manually. Binaries are available for download from its <a href="https://github.com/neovim/neovim/releases">releases page</a> on GitHub.</p>
				<li>Install <code>git</code>, <code>nodejs</code>, <code>npm</code>, <code>curl</code> and <code>unzip</code>.</li>
					<p>These are the dependencies that will be used by the plugins to download other plugins and LSP servers. Without them, the plugins will not run correctly.</p>
				<li>Copy the files from the <code>nvim</code> directory of this repository to <code>~/.config/nvim</code>.</li>
					<p>Assuming that you are on the root directory of the repository:</p>
					<pre><code>
mkdir ~/.config
cp -r nvim ~/.config
					</code></pre>
				<li>Open Neovim and use the <code>:PackerSync</code> command to install all the plugins. Error messages on the first start are normal as you have not install the plugins yet. Wait until all the plugins have installed their dependencies.</li>
			</ul>
			<p>That is basically it to run these configuration files.</p>
			<p>You can view and edit the plugins used by editing the file at <code>~/.config/nvim/lua/plugins/init.lua</code>. It uses the <a href="https://github.com/wbthomason/packer.nvim">packer.nvim</a> package manager plugin to manage them.</p>
			<p>You can view and edit the LSP servers used by editing the table <code>servers</code> in the file at <code>~/.config/nvim/lua/plugins/settings.lua</code>. Any name that you put there must be a valid LSP server from the <a href="https://github.com/williamboman/mason-lspconfig.nvim">mason-lspconfig</a> plugin. A table is available in its page on GitHub, where you can look for support to your favorite programming language. Only languages I use are included as default as you would expect.</p>
			<p>All the LSP servers will automatically share the same settings, that you can edit by modifiying the table <code>server_settings</code> in the same file.</p>
			<p>After adding new LSP servers, restart your Neovim session so Mason can download them.</p>
			<p>If you are a completely begginer, and need more help, I think that this tutorial might help you out:</p>
				<ul>
					<li><a href="https://www.youtube.com/watch?v=lpQMeFph1RE">(typecraft) Make Neovim BETTER than VSCode - LSP tutorial</a></li>
				</ul>
	<h2>Issues And Contributions</h2>
		<p>Learn how to report issues, questions and ideas and how to contribute to this project by reading its <a href="https://skippyr.github.io/materials/pages/contributions_guideline.html">contributions guideline</a>.</p>
	<h2>License</h2>
		<p>Dotfiles is released under the MIT License. You can refer to the license as the file <code><a href="https://github.com/skippyr/dotfiles/blob/main/LICENSE">LICENSE</a></code> in the root directory of this repository.</p>
		<p>Copyright (c) 2023, Sherman Rofeman. MIT License.</p>

