# dotfiles

## macOS

### Install brew packages

```zsh
cat brew-packages.txt | xargs ruby -e "print ARGV.join(' ')" | xargs brew install
```
