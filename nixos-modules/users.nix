{ config, pkgs, ... }:

let
  japanesePackages = import (builtins.fetchTarball "https://github.com/jaminW55/japanese-packages/archive/main.tar.gz");
in
{ 
  users.users.wellerbp = {
      isNormalUser = true;
      description = "Ben Weller";
      home = "/home/wellerbp";
      shell = pkgs.fish;
      extraGroups = [ "wheel" "networkmanager" "docker" ]; # Additional groups for the user
      # User-specific packages can also be managed here, if necessary
      packages = with pkgs; [
        anki
        citra-canary
        discord
        japanesePackages.gazou
        japanesePackages.tachidesk
        komikku
        lutris
        obsidian
        protonup-qt
        ryujinx
        thunderbird
        winetricks
        wineWowPackages.stable
        xivlauncher
        yuzu-mainline
        zotero
      ];
    };

  # Global User Settings
  users.defaultUserShell = pkgs.fish;

  # Global User Groups
  users.groups = {
    docker = {};
}
