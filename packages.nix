{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    alsa-utils
    anki
    brave
    btop
    citra-canary
    deluge
    discord
    direnv # vscode extension
    # distrobox
    # dunst # Wayland Notifications
    firefox
    fish
    gimp
    git
    gnutls
    hyprpaper
    japanesePackages.gazou
    japanesePackages.tachidesk
    kate
    # kitty # Terminal emulator
    komikku
    # libnotify # Sends notifications to Dunst
    libsForQt5.ark
    libsForQt5.kcalc
    libsForQt5.kolourpaint
    lutris
    mangohud
    # manjiDict
    neofetch
    nvd
    nvtop-amd
    obs-studio
    obsidian
    onlyoffice-bin
    pciutils
    protonup-qt
    # rofi-wayland # Dmenu for Wayland
    ryujinx
    telegram-desktop
    thunderbird
    unrar
    vim
    vlc
    vscode
    # waybar # Wayland Bar
    winetricks
    wineWowPackages.stable
    xdg-user-dirs
    xivlauncher
    # xorg.xhost  
    yuzu-mainline
    zoom-us
    zotero
  ];
}
