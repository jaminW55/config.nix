{ config, pkgs, ... }:

{
  # Define username and home directory (replace 'jdoe' with your actual username)
  home.username = "wellerbp";
  home.homeDirectory = "/home/wellerbp";

  # Set the Home Manager state version
  home.stateVersion = "23.05"; # Set this to the version you're using

  # Enable Home Manager for the user
  programs.home-manager.enable = true;

  # Locale and timezone settings
  time.timeZone = "America/New_York";
  i18n.defaultLocale = "en_US.UTF-8";

  # Define user packages
  home.packages = with pkgs; [
    # User-specific applications
    anki
    citra-canary
    discord
    lutris
    obsidian
    protonup-qt
    ryujinx
    thunderbird
    wineWowPackages.stable
    yuzu-mainline
    zotero
    # ... and any other user-specific packages
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
