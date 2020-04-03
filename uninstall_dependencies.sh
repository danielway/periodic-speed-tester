echo "Uninstalling dependency speedtest-cli through apt (elevated privileges required)..."
sudo apt remove -y speedtest-cli libnotify-bin
echo "Dependencies speedtest-cli removed."
echo "NOTE: The libnotify-bin dependency was left installed in case it shipped with your OS. Consider removing it yourself with 'sudo apt remove -y libnotify-bin'."
