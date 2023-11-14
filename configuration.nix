# Edit this configuration file to define what should be installed on your system.  Help is available in the configuration.nix(5) man page and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      # Imports Modules
      ./nixos-modules/packages.nix        # Package management
      ./nixos-modules/localization.nix    # Localization settings
      ./nixos-modules/programs.nix        # Program configurations
      ./nixos-modules/services.nix        # Service configurations
      ./nixos-modules/users.nix           # User account definitions
      # AAGL Launcher Module
      aagl-gtk-on-nix.module
    ];

  # Nix package manager settings
  nix.settings = { 
    # Cache settings to speed up build processes and binary package downloads
    substituters = [ "https://ezkea.cachix.org" "https://hyprland.cachix.org" ];
    trusted-public-keys = [ "ezkea.cachix.org-1:ioBmUbJTZIKsHmWWXPe1FSFbeVe+afhfgqgTSNd34eI=" "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc=" ];
  };

  # Bootloader Configuration
  boot.loader.systemd-boot.enable = true;  # Use systemd-boot as the bootloader
  boot.loader.efi.canTouchEfiVariables = true;  # Allow bootloader to modify EFI variables

  # Allow the installation of unfree packages not included in the open-source license
  nixpkgs.config.allowUnfree = true;

  # This value determines the NixOS release from which the default settings for stateful data, like file locations and database versions on your system were taken.
  # It‘s perfectly fine and recommended to leave this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option: (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.05"; # Did you read the comment?

  # User account definitions
  users.users = {
    $User = {
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
