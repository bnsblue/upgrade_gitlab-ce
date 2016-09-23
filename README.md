# upgrade_gitlab-ce


## Description

The provided scripts are used to isolate GitLab upgrade from the upgrades of other packages.

To setup, execute:
```bash
./setup.sh

```
This will do two things: 
1. Create a symlink `/usr/local/bin/upgrade_gitlab-ce` pointing to `upgrade_gitlab-ce`
2. Set gitlab-ce package held

After setting up, the gitlab-ce package is held and will no longer be upgraded by normal `apt-get upgrade`.
If you want to upgrade gitlab-ce, execute:
```bash
/usr/local/bin/upgrade_gitlab-ce.sh
```


## Unhold gitlab-ce
If you want gitlab-ce to be upgradable by normal `apt-get upgrade` command, simply execute:
```bash
sudo apt-mark unhold gitlab-ce
```


## Disclaimer
This comes with absolutely no warranty. Please make sure you know what you are doing before executing the scripts.
