<h1>Dotfiles</h1>
	<p>My dotfiles for various applications.</p>
	<h2>Installation And Usage</h2>
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

