# dotfiles

## Installation (with home-manager)

### Linux

install nix

```sh
sh <(curl -L https://nixos.org/nix/install) --daemon
```

install home-manager

```sh
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install
```

run home-manager switch

```sh
home-manager -f ./home-manager/home.nix switch
```
