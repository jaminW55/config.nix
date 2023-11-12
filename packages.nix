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
    anki
    btop
    citra-canary
    deluge
    discord
    direnv # vscode extension
    firefox
    fish
    gimp
    git
    glib
    gnutls
    japanesePackages.gazou
    japanesePackages.tachidesk
    kate
    komikku
    lutris
    mangohud
    # manjiDict
    mesa
    neofetch
    nodejs # Docker Support; Java Framework Support
    nvd
    nvtop-amd
    obs-studio
    obsidian
    onlyoffice-bin
    pciutils
    protonup-qt
    python310 
    python310Packages.pip
    python310Packages.virtualenv
    ryujinx
    shortwave
    spotify
    telegram-desktop
    thunderbird
    unrar
    vim
    vlc
    vscode # General Code Writer; Configuration Management; Docker Support
    winetricks
    wineWowPackages.stable
    xdg-user-dirs
    xivlauncher
    # xorg.xhost
    yarn # Docker Support; Java Dependency Manager
    yuzu-mainline
    zotero
  ];
}
