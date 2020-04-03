# Periodic Speedtester

## Description

This tool executes a periodic internet speed test in the background and reports its results to both a spreadsheet and Ubuntu system notification.

This is a set of simple shell scripts that depend on the speedtest CLI `speedtest-cli` and notification CLI `libnotify-bin`.

## Installation

Once cloned, execute `./install_dependencies.sh` if you're missing either of `speedtest-cli` or `libnotify-bin`. One the dependencies are installed, you may install the tester to your user directory and crontab with `./install.sh`.

## How to use

By default, a speedtest will execute hourly recording the result to `~/.speedtest/results.csv` and displaying a system notification. This may be adjusted in the user's crontab with `crontab -e`.

A manual test may be executed with `./~/.speedtest/speedtest.sh`.

## Uninstallation

To remove the `speedtest-cli` dependency, execute `./uninstall_dependencies.sh` in the `~/.speedtest` directory.

Execute `./uninstall.sh` located in `~/.speedtest` to delete that directory and remove the test job from your crontab.
