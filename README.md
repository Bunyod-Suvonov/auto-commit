# Auto-commit

Using this tool, you can have an active github commit history in your profile.

## Step 1
clone the repo:
```bash
# when using ssh
git clone git@github.com:Bunyod-Suvonov/auto-commit.git
# when using http
git clone https://github.com/Bunyod-Suvonov/auto-commit.git
```
## Step 2
Add the script to crontab and adjust anacron to run missed tasks:
```bash
# assuming apt is the package manager
sudo apt install crontab anacron
cp /path/to/script /etc/cron.daily/
sudo echo "1 5 cron.daily nice run-parts /etc/cron.daily" >> /etc/anacrontab
```


