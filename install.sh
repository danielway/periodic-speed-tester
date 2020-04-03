echo "Setting up the speedtest results directory in ~/.speedtest with scripts and results.csv..."
mkdir -p ~/.speedtest
cp ./install.sh ~/.speedtest
cp ./install_dependencies.sh ~/.speedtest
cp ./uninstall.sh ~/.speedtest
cp ./uninstall_dependencies.sh ~/.speedtest
cp ./speedtest.sh ~/.speedtest
speedtest --csv-header > ~/.speedtest/results.csv

echo "Scheduling the speedtest with the user cron to execute hourly..."
(crontab -l 2>/dev/null; echo "*/5 * * * * ./~/.speedtest/speedtest.sh") | crontab -

echo "Periodic speedtest installed and configured. You may delete this directory - all scripts to install/uninstall can be found in ~/.speedtest."
