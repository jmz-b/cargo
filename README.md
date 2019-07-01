cargo
-----

various config and script files intended to be managed using stow[1]

example
-------

this will install some useful shell scripts to ~/.local/bin

```
$ cd ~
$ git clone git@github.com:jmz-b/cargo.git Cargo
$ cd Cargo
$ stow git
$ ls -l ../.git*
lrwxrwxrwx 1 jmz jmz 20 Jun 21 18:59 ../.gitconfig -> Cargo/git/.gitconfig
lrwxrwxrwx 1 jmz jmz 27 Jun 21 18:59 ../.gitignore_global -> Cargo/git/.gitignore_global

```

[1]: https://www.gnu.org/software/stow/
