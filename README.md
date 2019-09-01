# blackarch-docker
BlackArch Linux in a container, with basic tools pre-installed:

* `yay` (AUR helper)
* `sudo` (container runs as non-root user but has sudo access with `NOPASSWD`)
* `vim`
* `zsh`
* `git`
* `net-tools` (`netstat` et al)
* `bind-tools` (`dig` et al)
* `ldns` (`drill`, similar to `dig`)
* `htop`

Building the container builds and installs BlackArch and installs `base-devel`, since this is needed to install many AUR packages. The rest is left to you.

Note that the container is still big, at 1.89GB. I'm trying to get it down.
