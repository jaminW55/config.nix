{ config, pkgs, ... }:

let
  aagl-gtk-on-nix = import (builtins.fetchTarball "https://github.com/ezKEa/aagl-gtk-on-nix/archive/main.tar.gz");
  japanesePackages = import (builtins.fetchTarball "https://github.com/jaminW55/japanese-packages/archive/main.tar.gz");
in
{
  imports = [
    aagl-gtk-on-nix.module
  ];

  home.packages = with pkgs; [
    japanesePackages.gazou
    japanesePackages.tachidesk
  ];
}
