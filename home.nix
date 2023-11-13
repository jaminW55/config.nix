{ config, pkgs, ... }:

{
  # Define Username and Home Directory
  home.username = "$User";
  home.homeDirectory = "/home/$User";

  # Set the Home Manager state version
  home.stateVersion = "23.05"; # Set this to the version you're using

  # Enable Home Manager for the user
  programs.home-manager.enable = true;

  # Define user packages
  home.packages = with pkgs; [
    # User-specific applications
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

  # Shell configuration
  programs.fish.enable = true;
  programs.fish.promptInit = ''
    function fish_prompt
      # ... your custom fish prompt ...
    end
  '';

  # ... other configurations ...
}
