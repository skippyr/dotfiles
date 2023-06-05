<h1>Dotfiles</h1>
	<h2>Starting Point</h2>
		<p>These are my dotfiles. You can use them to setup some applications or systems faster or use it as a base for yours too.</p>
	<h2>Installation And Usage</h2>
		<h3>Neovim</h3>
			<p>By using my dotfiles, you can easily configure Neovim with LSP servers by following these steps:</p>
			<ul>
				<li>Install the latest version of Neovim.</li>
					<p>Most Linux distributions have it, but most also have it out-of-date. Anyway, you can always install the latest binary of Neovim for your system by looking into its <a href="https://github.com/neovim/neovim">available releases on GitHub</a>.</p>
				<li>Install all the dependencies required for the plugins to work:</li>
					<ul>
						<li>git</li>
						<li>nodejs</li>
						<li>npm</li>
						<li>curl</li>
						<li>unzip</li>
					</ul>
				<li>Copy the <code>nvim</code> directory of this repository to <code>~/.config/nvim</code>.</li>
					<pre><code>
mkdir -p ~/.config
cp -r nvim ~/.config
					</code></pre>
				<li>Open Neovim and download the basic plugins by using the <code>:PackerSync</code> command. An error is normal in this step, as you do not have them installed yet.</li>
				<li>Configure your settings, plugins and LSP servers to your liking by simply changing some variables in the <code>~/.config/nvim/init.lua</code> file. After making some changes, reopen Neovim. If you have modified your plugins, use the <code>:PackerSync</code> command to update them again.</li>
			</ul>
