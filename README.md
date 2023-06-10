<h1>Dotfiles</h1>
	<h2>Starting Point</h2>
		<p>These are my dotfiles. You can use them to setup some applications faster.</p>
	<h2>Installation And Usage</h2>
		<p>Before installing anything, follow these steps:</p>
			<ul>
				<li>Clone this repository.</li>
					<pre><code>git clone --depth=1 https://github.com/skippyr/dotfiles</code></pre>
				<li>Access the repository's directory.</li>
					<pre><code>cd dotfiles</code></pre>
			</ul>
		<h3>ZSH</h3>
			<ul>
				<li>Copy the <code>zsh/.zshrc</code> file to <code>~</code>.</li>
					<pre><code>cp zsh/.zshrc ~</code></pre>
				<li>Restart your ZSH session.</li>
			</ul>
		<h3>Kitty</h3>
			<ul>
				<li>Copy the <code>kitty/kitty.conf</code> file to <code>~/.config/kitty</code>.</li>
					<pre><code>
mkdir -p ~/.config/kitty
cp kitty/kitty.conf ~/.config/kitty
					</code></pre>
				<li>Restart your Kitty session.</li>
				<p>If you want, you can either install the same theme or font that are in the <code>~/.config/kitty/kitty.conf</code> file to use them, or you can change it to others that you like.</p>
			</ul>
		<h3>Neovim</h3>
			<ul>
				<li>Install the dependencies needed by the plugins:</li>
					<ul>
						<li>git</li>
						<li>nodejs</li>
						<li>npm</li>
						<li>curl</li>
						<li>unzip</li>
					</ul>
				<li>Copy the <code>nvim</code> directory to <code>~/.config/nvim</code>.</li>
				<pre><code>cp -r nvim ~/.config/nvim</code></pre>
				<li>Open Neovim and run the <code>:PackerSync</code> command to install the plugins and start installing LSP servers. An error pointing that plugins are not installed is normal. Once done, you can start using it.</p>
				<p>You can customize your settings by modifying the <code>~/.config/nvim/init.lua</code> file. Restart Neovim for your changes to be applied. Run the <code>:PackerSync</code> command again if you have modified the plugins to update them.</p>
			</ul>
	<h2>Issues And Contributions</h2>
		<p>Issues can be reported through the <a href="https://github.com/skippyr/dotfiles/issues">issues tab</a>.</p>
		<p>Further more, learn how to contribute to this project by reading its <a href="https://skippyr.github.io/materials/pages/contributions_guidelines.html">contributions guidelines</a>.</p>
	<h2>License</h2>
		<p>This project is released under terms of the MIT License.</p>
		<p>Copyright (c) 2023, Sherman Rofeman. MIT License.</p>
