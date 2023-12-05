{ config, pkgs, ... }:

let
  japanesePackages = import (builtins.fetchTarball "https://github.com/jaminW55/japanese-packages/archive/main.tar.gz");
in
{ 
  users.users.$User = {
      isNormalUser = true;
      description = "$User Name";
      home = "/home/$User";
      shell = pkgs.fish;
      extraGroups = [ "wheel" "networkmanager" "docker" ]; # Additional groups for the user
      # User-specific packages can also be managed here, if necessary
      packages = with pkgs; [
        anki
        citra-canary
        discord
        japanesePackages.gazou
        japanesePackages.tachidesk
        kommiku
        lutris
        obsidian
        protonup-qt
        ryujinx
        thunderbird
        wine trucks
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
