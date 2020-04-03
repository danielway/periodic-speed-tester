echo "Installing dependencies speedtest-cli and libnotify-bin through apt (elevated privileges required)..."
if sudo apt install -y speedtest-cli libnotify-bin ; then
	echo "Dependencies speedtest-cli and libnotify-bin successfully installed."
else
	echo "Dependency installation failed."
fi
