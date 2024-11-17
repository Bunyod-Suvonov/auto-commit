# Auto-commit

Using this tool, you can have an active github commit history in your profile.

## Step 1
Create a private repo, clone it and copy the files in this repo to yours. Then adjust the script's parameters to your preferences. Especially `project_dir` variable should be changed to the local path to your repo
## Step 2
Add the script to cron's daily tasks:
```bash
# assuming apt is the package manager
sudo apt install crontab anacron
# copy the script to daily tasks of cron
sudo cp /path/to/script /etc/cron.daily/
```
Anacron should have `cron.daily` in its configuration file by default. Check it with
```bash
cat /etc/anacrontab
```
If `cron.daily` is not there, add it:
```bash
sudo echo "1	5	cron.daily	run-parts --report /etc/cron.daily" >> /etc/anacrontab
```
Now the script should run once a day every day, and if your computer was off at the time, anacron runs it after 5 minutes after startup. Note that you should have internet connection when the script runs, otherwise, the script simply fails.

There is a way to run the script only if there is internet access by adding the script as a systemd service, but I won't bother with it. Feel free to make a PR if you try it and it works.
