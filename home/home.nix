{ config, pkgs, inputs, lib, ... }: {
  imports = [
    ./programs
    ./linux/gui/waybar/default.nix
    ./linux/gui/hyprland/default.nix
  ];
  home = {
    username = "scott";
    homeDirectory = "/home/scott";
    stateVersion = "23.11";
  };

  programs.home-manager.enable = true;

}
