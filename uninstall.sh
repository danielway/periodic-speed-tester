read -p "Are you sure you want to delete ~/.speedtest, including all data in results.csv? " -n 1 -r
echo 
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
	echo "Canceling uninstall."
	exit 1
fi

echo "Deleting ~/.speedtest..."
rm -rf ~/.speedtest

echo "Removing cron entry..."
crontab -l | grep -v './~/.speedtest/speedtest.sh'  | crontab -

echo "Periodic speedtest uninstalled."
