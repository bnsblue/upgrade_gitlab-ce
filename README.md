# upgrade_gitlab-ce


## Purpose
In a multi-instnace GitLab Geo setup, when the version of the secondary node is ahead of that of the primary node, GitLab might fail to launch or fail to work properly.
This repo is created to isolate (hold) the upgrade of package `gitlab-ce` from the upgrade of others, so to prevent the version of the secondary node is upgraded accidentally by other user's `apt-get upgrade`.
It also provides a one-click script to unhold, upgrade, and hold `gitlab-ce` for the convenience of the administrators.

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
