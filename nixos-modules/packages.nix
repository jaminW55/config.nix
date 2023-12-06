{ pkgs, ... }:

{
  # System-wide packages
  environment.systemPackages = with pkgs; [
    # Development Tools and Utilities
    gimp                   # GNU Image Manipulation Program
    git                    # Version control system
    kate                   # KDE Advanced Text Editor
    nodejs                 # JavaScript runtime for server-side scripting
    obs-studio             # Open Broadcaster Software for video recording and live streaming
    vim                    # Highly configurable text editor
    vscode                 # Visual Studio Code, an IDE for software development
    yarn                   # Dependency management for JavaScript

    # System and Network Utilities
    alsa-utils             # Utilities for configuring and using ALSA (Advanced Linux Sound Architecture)
    btop                   # Resource monitor with an interactive interface
    glib                   # Low-level core library for GNOME
    gnutls                 # Secure communications library
    pciutils               # Utilities for inspecting and manipulating devices connected via PCI
    xdg-user-dirs          # Manages well known user directories like Desktop, Documents, etc.
    # xorg.xhost             # Server access control program for X

    # Multimedia and Graphics
    obsidian               # Note-taking and knowledge base application
    vlc                    # Media player for various audio and video formats

    # Internet and Communication
    deluge                 # BitTorrent client
    firefox                
    telegram-desktop       
    thunderbird            

    # Office and Productivity
    onlyoffice-bin         # Office suite for document editing

    # Gaming and Performance
    mangohud               # Game Overlay for monitoring FPS, temperatures, and other system stats
    mesa                   # Open-source implementation of OpenGL/Vulkan

    # Miscellaneous
    unrar                  # Utility RAR Interactions

    # KDE Packages
    libsForQt5.ark
    libsForQt5.kcalc
    libsForQt5.kdeconnect-kde
    libsForQt5.qt5ct       # KDE Connect Support

    # Wayland Packages
    aml                    # Another main loop
    cage                   # A Wayland kiosk that runs a single, maximized application
    cliphist               # A Wayland Clipboard Manager
    drm_info               # Small utility to dump info about DRM devices
    dunst                  # Lightweight and customizable notification daemon
    # eww                    # ElKowars wacky widgets
    # eww-wayland            # ElKowars wacky widgets
    # foot                   # A fast, lightweight and minimalistic Wayland terminal emulator
    freerdp3               # A Remote Desktop Protocol Client
    gebaar-libinput        # Gebaar, a super simple WM independent touchpad gesture daemon for libinput
    # glpaper                # Wallpaper program for wlroots based Wayland compositors such as sway that allows you to render glsl shaders as your wallpaper
    grim                   # Grab images from a Wayland compositor
    gtk-layer-shell        # A library to create panels and other desktop components for Wayland using the Layer Shell protocol
    i3status-rust          # Very resource-friendly and feature-rich replacement for i3status
    imv                    # A command line image viewer for tiling window managers
    kanshi                 # Dynamic display configuration tool
    kitty                  # A modern, hackable, featureful, OpenGL based terminal emulator
    lavalauncher           # A simple launcher panel for Wayland desktops
    libnotify              # A library that sends desktop notifications to a notification daemon
    libvncserver_master    # VNC server library
    # mako                   # A lightweight Wayland notification daemon
    neatvnc                # A VNC server library
    new-wayland-protocols  # Wayland protocol extensions
    obs-wlrobs             # An obs-studio plugin that allows you to screen capture on wlroots based wayland compositors
    rootbar                # A bar for Wayland WMs
    # rofi-wayland           # Window switcher, run dialog and dmenu replacement for Wayland
    # salut                  # A sleek notification daemon
    # shotman                # The uncompromising screenshot GUI for Wayland compositors
    # sirula                 # Simple app launcher for wayland written in rust
    slurp                  # Select a region in a Wayland compositor
    # sway-unwrapped         # An i3-compatible tiling Wayland compositor
    # swaybg                 # Wallpaper tool for Wayland compositors
    # swayidle               # Idle management daemon for Wayland
    # swaylock               # Screen locker for Wayland
    # swaylock-effects       # Screen locker for Wayland
    swww                   # Efficient animated wallpaper daemon for wayland, controlled at runtime
    waybar                 # Highly customizable Wayland bar for Sway and Wlroots based compositors
    waypipe                # A network proxy for Wayland clients (applications)
    wayprompt              # Multi-purpose prompt tool for Wayland
    wayvnc                 # A VNC server for wlroots based Wayland compositors
    # wbg                    # Wallpaper application for Wayland compositors
    wdisplays              # A graphical application for configuring displays in Wayland compositors
    wev                    # Wayland event viewer
    wf-recorder            # Utility program for screen recording of wlroots-based compositors
    wl-clipboard           # Command-line copy/paste utilities for Wayland
    wl-gammactl            # Contrast, brightness, and gamma adjustments for Wayland
    wl-gammarelay-rs       # A simple program that provides DBus interface to control display temperature and brightness under wayland without flickering
    wl-screenrec           # High performance wlroots screen recording, featuring hardware encoding
    wlay                   # Graphical output management for Wayland
    # wldash                 # Wayland launcher/dashboard
    wlogout                # A wayland based logout menu
    wlr-randr              # An xrandr clone for wlroots compositors
    wlroots                # A modular Wayland compositor library
    wlsunset               # Day/night gamma adjustments for Wayland
    # wlvncc                 # A Wayland Native VNC Client
    wob                    # A lightweight overlay bar for Wayland
    wofi                   # A launcher/menu program for wlroots based wayland compositors such as sway
    wshowkeys              # Displays keys being pressed on a Wayland session
    wtype                  # xdotool type for wayland
    xdg-desktop-portal-wlr # xdg-desktop-portal backend for wlroots
    xdg-utils              # xdg application integration for desktop environment -- for cliphist
  ];
}
