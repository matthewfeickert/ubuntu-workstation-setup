# ubuntu-workstation-setup
Instructions to setup a Ubuntu workstation from scratch for physics and data science research

1. Update all pre-installed packages

```console
sudo apt update && sudo apt -y upgrade
```
2. [Create a SSH key for GitHub](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) and add it to GitHub
3. [Create a GPG key and add it to GitHub][gpg-key]
4. `mkdir -p ~/Code/GitHub`
5. Clone [dotfiles repo][dotfiles-github]
6. Install all packages specified in `apt.txt`
```console
sudo apt update && sudo apt install $(cat apt.txt | cut -f1 -d "#" | sed '/^$/d')
```
7. Restart computer
8. Install [Oh My Zsh](https://ohmyz.sh/) and configure it for terminal.
9. Restart computer.
10. Install [`pyenv`][pyenv-github] and [`pyenv-virtualenv`][pyenv-virtualenv-github]

* Install Python
* `pyenv virtualenv 3.10.4 base`
* `pyenv virtualenv 3.10.4 pipx`
* `pyenv virtualenv 3.10.4 ROOT-build`
* `mkdir -p ~bin && cp $dotfiles/bin/pipx ~/bin/pipx`
* `chmod +x ~/bin/pipx`
* `pipx install <everything in $dotfiles/pipx-installs.txt>`
* Clone [ROOT-build-recipes][ROOT-build-recipes-github] under `~/build_src` (summarize everything in the ROOT-build-recipes repo)
   * `pyenv activate ROOT-build && python -m pip install --upgrade pip setuptools wheel`
   * `python -m pip install numpy Pygments PyYAML`
   * copy version out that you want to `build_src`
   * `bash build_ROOT.sh 2>&1 | tee root_build.log`
   * Source `${HOME}/bin/root-cern/bin/thisroot.sh` in profile
* Download and install [Zotero][zotero-website]
   * Download from download page: https://www.zotero.org/download/
   * Unpack
   * `sudo cp -r <zotero directory> /opt/zotero`
   * `sudo ./set_launcher_icon`
   * `ln -s /opt/zotero/zotero.desktop ~/.local/share/applications/zotero.desktop`
* Download and install [Inkscape][inkscape-website]
* Download and install [Signal][signal-website]

---

* `mkdir -p ~/build_src`
* `bash build_pyenv_python.sh`

[gpg-key]: https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key
[dotfiles-github]: https://github.com/matthewfeickert/dotfiles
[pyenv-github]: https://github.com/pyenv/pyenv
[pyenv-virtualenv-github]: https://github.com/pyenv/pyenv-virtualenv
[ROOT-build-recipes-github]: https://github.com/matthewfeickert/ROOT-build-recipes
[zotero-website]: https://www.zotero.org/support/installation
[inkscape-website]: https://inkscape.org/release/inkscape-1.2/gnulinux/ubuntu/ppa/dl/
[signal-website]: https://signal.org/download/
