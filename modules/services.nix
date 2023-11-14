{ config, pkgs, ... }:

{
  # Networking
  networking = {
    hostName = "AMDnixOS"; # Define your hostname.
    networkmanager.enable = true;
    firewall.enable = true;
    firewall.allowedTCPPortRanges = [ 
      { from = 1714; to = 1764; } # KDE Connect
    ];  
    firewall.allowedUDPPortRanges = [ 
      { from = 1714; to = 1764; } # KDE Connect
    ];  
  };

  # Enable CUPS for printing
  services.printing.enable = true;

  # Sound management with pipewire
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  # Desktop Environments and Display Managers
  # Plasma KDE
  services.xserver = {
    enable = true; # Enable X11 windowing system for fallback or X11 applications
    layout = "us"; # Keyboard layout for X11 sessions
    xkbVariant = ""; # Keyboard variant for X11 sessions
    displayManager = {
      sddm.enable = true; # Plasma Enable 
  #    gdm.enable = false; # Gnome Enable
  #    defaultSession = ""; # "gnome-xorg" for X11 ; "gnome" for Wayland
    };
    desktopManager = {
      plasma5.enable = true; # Enable KDE Plasma
  #    plasma5.wayland = true; # Enable X12 Support for Plasma
  #    gnome3.enable = false; # Enable GNOME
  #    gnome3.wayland = true; # Enable X12 Support for GNOME
    };
  };

  # SSH Daemon
  services.openssh.enable = true;

  # Docker Configuration
  virtualisation.docker = {
    enable = true;
    storageDriver = "overlay2"; # 'overlay2' for systemd; 'btrfs' for btrfs
    rootless = {
      enable = true;
      setSocketVariable = true; # Set DOCKER_HOST for rootless Docker
    };
  };


  # Users and groups can also be managed here if related to services,like adding users to the Docker group, etc.

  # Define any additional services here.
  #

  # Services Disabled
  services.flatpak.enable = false;

}
