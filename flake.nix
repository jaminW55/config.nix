{
  description = "A NixOS configuration flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    nur.url = "github:nix-community/NUR";
    inputs.hyprland.url = "github:hyprwm/Hyprland";
    nixpkgs-wayland.url = "github:nix-community/nixpkgs-wayland";
    # nixos-hardware.url = "github:NixOS/nixos-hardware";
    # Add other flake inputs if needed, such as home-manager or custom repos
  };

  outputs = { self, nixpkgs, flake-utils, nur, hyprland, ... } @ inputs: # Add: nixos-hardware for Laptop Specific Hardware Settings
    flake-utils.lib.eachSystem [ "x86_64-linux" ] (system:
      let
        # Configure the package set, including overlay support if necessary.
        overlay = final: prev: {
          # Hyprland Overlay
          waylandPackages = import inputs.nixpkgs-wayland {
            inherit (prev) pkgs;
          };
        # Example Overlay
        };
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ overlay ];
          # Allow the installation of unfree packages not included in the open-source license
          config = {
            allowUnfree = true; 
            # Add Other Global Nixpkgs Options
          };
        };
      in
      {
        # Define NixOS configurations for available hosts
        nixosConfigurations.AMDnixOS = nixpkgs.lib.nixosSystem {
          modules = [
            # NixOS Module Paths
            ./hardware-configuration.nix        # Hardware Settings
            ./nixos-modules/packages.nix        # Package management
            ./nixos-modules/localization.nix    # Localization settings
            ./nixos-modules/programs.nix        # Program configurations
            ./nixos-modules/services.nix        # Service configurations
            ./nixos-modules/users.nix           # User account definitions
            ({ pkgs, ... }: {
              nixpkgs.overlays = [ nur.overlay ];
            })
            ({ config, ... }: {
              nix.settings = {
              substituters = [ 
                  "https://ezkea.cachix.org" 
                  "https://hyprland.cachix.org" ];
              trusted-public-keys = [ 
                  "ezkea.cachix.org-1:ioBmUbJTZIKsHmWWXPe1FSFbeVe+afhfgqgTSNd34eI=" 
                  "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc=" ];
            };
              programs.hyprland.enable = true;
              programs.hyprland.package = hyprland.packages.${system}.hyprland;
            })
          ];
        };
      }
    );
}
