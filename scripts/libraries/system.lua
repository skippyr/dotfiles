function ActivateServices(services)
	for _, service in pairs(services) do
		os.execute("sudo systemctl enable --now " .. service)
	end
end
