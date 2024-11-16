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
Optionally, change the script's parameters to your likes. Especially `project_dir` variable should be changed if the repo isn't cloned in `$HOME`
## Step 2
Add the script to cron's daily tasks:
```bash
# assuming apt is the package manager
sudo apt install crontab anacron
# copy the script to daily tasks of cron
sudo cp /path/to/script /etc/cron.daily/
```
Anacron should by default have `cron.daily` in its configuration file. Check it with
```bash
cat /etc/anacrontab
```
If `cron.daily` is not there, add it:
```bash
sudo echo "1	5	cron.daily	run-parts --report /etc/cron.daily" >> /etc/anacrontab
```


