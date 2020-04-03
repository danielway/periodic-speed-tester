echo "Beginning speedtest..."

# Issue a pre-test warning, in case it impacts the user
notify-send "Speedtest Starting" "A periodic speedtest is starting now."

# Execute the speedtest
speedtest --csv >> ~/.speedtest/results.csv

echo "Speedtest complete, parsing results..."

# Collect the latest measurements
LASTLINE=`tail -1 ~/.speedtest/results.csv`
DOWNLOAD=`echo $LASTLINE | awk -F, '{print $9}'`
UPLOAD=`echo $LASTLINE | awk -F, '{print $10}'`
DOWNLOAD_MBPS=`echo "scale=2; $DOWNLOAD / 1000000" | bc`
UPLOAD_MBPS=`echo "scale=2; $UPLOAD / 1000000" | bc`

echo "Speedtest results are DL $DOWNLOAD_MBPS Mbps and UL $UPLOAD_MBPS Mbps"

# Issue a post-test summary, with the latest measurements
notify-send "Speedtest Complete" "Download $DOWNLOAD_MBPS Mbps, upload $UPLOAD_MBPS Mbps."

echo "Speedtest complete."
