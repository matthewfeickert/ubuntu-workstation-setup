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
* `mkdir -p ~bin && cp $dotfiles/bin/pipx ~/bin/pipx`
* `chmod +x ~/bin/pipx`
* `pipx install <everything in $dotfiles/pipx-installs.txt>`
* Clone [ROOT-build-recipes][ROOT-build-recipes-github] under `~/build_src` (summarize everything in the ROOT-build-recipes repo)
   * copy version out that you want to `build_src`
   * `bash build_ROOT.sh 2>&1 | tee root_build.log`
   * Source `${HOME}/bin/root-cern/bin/thisroot.sh` in profile

---

* `mkdir -p ~/build_src`
* `bash build_pyenv_python.sh`

[gpg-key]: https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key
[dotfiles-github]: https://github.com/matthewfeickert/dotfiles
[pyenv-github]: https://github.com/pyenv/pyenv
[pyenv-virtualenv-github]: https://github.com/pyenv/pyenv-virtualenv
[ROOT-build-recipes-github]: https://github.com/matthewfeickert/ROOT-build-recipes
