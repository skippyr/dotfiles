function ChangeShell(shell)
	os.execute("chsh -s /bin/" .. shell)
end
