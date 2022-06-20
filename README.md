# ubuntu-workstation-setup
Instructions to setup a Ubuntu workstation from scratch for physics and data science research

1. Update all pre-installed packages

```console
sudo apt update && sudo apt -y upgrade
```
2. [Create a SSH key for GitHub](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) and add it to GitHub
3. `mkdir -p ~/Code/GitHub`
4. Clone dotfiles repo (https://github.com/matthewfeickert/dotfiles)
5. Install all packages specified in `apt.txt`
```console
sudo apt update && sudo apt install $(cat apt.txt | cut -f1 -d "#" | sed '/^$/d')
```
6. Restart computer
