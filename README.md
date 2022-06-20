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


* `mkdir -p ~/build_src`
* `bash build_pyenv_python.sh`

[gpg-key]: https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key
[dotfiles-github]: https://github.com/matthewfeickert/dotfiles
[pyenv-github]: https://github.com/pyenv/pyenv
[pyenv-virtualenv-github]: https://github.com/pyenv/pyenv-virtualenv
