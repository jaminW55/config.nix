{ config, pkgs, ... }:

{
  # User account definitions
  users.users = {
    wellerbp = {
      isNormalUser = true;
      description = "$User Name";
      home = "/home/$User";
      shell = pkgs.fish;
      extraGroups = [ "wheel" "networkmanager" "docker" ]; # Additional groups for the user
      # User-specific packages can also be managed here, if necessary
      packages = with pkgs; [
        # List packages for the user $User
      ];
    };

    # Add additional user configurations below as needed
    # ...
  };

  # Global User Settings
  users.defaultUserShell = pkgs.zsh;
  
  # Groups can be managed here if necessary
  users.groups = {
    docker = {};
    # Define other groups if needed
   
  };
  
  # Define any user or group related services and system-wide settings. 
  # For example, enabling user services, auto-login, or anything that's user-specific but affects system operation.
  

}
