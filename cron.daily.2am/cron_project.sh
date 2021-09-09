#!/bin/bash
# in ubuntu /var/run/reboot-required is needed for reboot to fully update the packages
# insert this to /etc/crontab *   *  *  *  * ~/bash_course/cron_script.sh

sudo apt -y update
sudo apt -y upgrade

if [ -f /var/run/reboot-required ]; then
        sudo reboot
fi
