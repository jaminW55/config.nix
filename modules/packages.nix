{ pkgs }:

let
  # Import external package sets
  aagl-gtk-on-nix = import (builtins.fetchTarball "https://github.com/ezKEa/aagl-gtk-on-nix/archive/main.tar.gz");
  japanesePackages = import (builtins.fetchTarball "https://github.com/jaminW55/japanese-packages/archive/main.tar.gz");
  # Local packages (assuming you have these nix expressions locally and want to include them)
  # manjiDict = pkgs.callPackage "/home/wellerbp/Documents/Nix Packages/Manji Dict/manjiDict.nix" {};
in
{
  # System-wide packages
  environment.systemPackages = with pkgs; [
    # System utilities
    alsa-utils
    btop
    deluge
    direnv # vscode extension
    firefox
    fish
    gimp
    git
    glib
    gnutls
    kate
    mangohud
    mesa
    neofetch
    nodejs # Docker Support; Java Framework Support
    nvd
    nvtop-amd
    obs-studio
    obsidian
    onlyoffice-bin
    pciutils
    python310 
    python310Packages.pip
    python310Packages.virtualenv
    shortwave
    spotify
    telegram-desktop
    thunderbird
    unrar
    vim
    vlc
    vscode # General Code Writer; Configuration Management; Docker Support
    xdg-user-dirs
    # xorg.xhost
    yarn # Docker Support; Java Dependency Manager
  ];
}
