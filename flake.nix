{
  description = "A NixOS configuration flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    nur.url = "github:nix-community/NUR";
    # nixos-hardware.url = "github:NixOS/nixos-hardware";
    # Add other flake inputs if needed, such as home-manager or custom repos
  };

  outputs = { self, nixpkgs, flake-utils, nur, ... } @ inputs: # Add: nixos-hardware for Laptop Specific Hardware Settings
    flake-utils.lib.eachSystem [ "x86_64-linux" ] (system:
      let
        # Configure the package set, including overlay support if necessary.
        overlay = final: prev: {
          # Example of an overlay if needed
        };
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ overlay ];
          config = {
            allowUnfree = true;
            # Add other global Nixpkgs options here
          };
        };
      in
      {
        # Define NixOS configurations for available hosts
        nixosConfigurations.AMDnixOS = nixpkgs.lib.nixosSystem {
          inherit system pkgs;
          modules = [
            # NixOS Module Paths
            ./hardware-configuration.nix
            ./nixos-modules/packages.nix
            ./nixos-modules/localization.nix
            ./nixos-modules/programs.nix
            ./nixos-modules/services.nix
            ./nixos-modules/users.nix
            ({ pkgs, ... }: {
              nixpkgs.overlays = [ nur.overlay ];
            })
          ];
        };
      }
    );
}
