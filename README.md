# conf

dotfiles and assets

### example usage

- install GNU stow

- clone repo under home directory

```
git clone https://github.com/jmz-b/conf $HOME/Conf
```

- use stow to create and manage symlinks

```
cd $HOME/Conf

# install/remove an symlinks for a single package, eg:
stow git
stow -D git

# install/remove all symlinks
stow *
stow -D *
```
