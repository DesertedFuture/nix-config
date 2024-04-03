{ config, pkgs, inputs, ... }:
{
  imports = [
    ./programs
    ./linux/gui/waybar/waybar.nix
  ];
  home = {
    username = "scott";
    homeDirectory = "/home/scott";
    stateVersion = "23.11";
  };

  programs.home-manager.enable = true;

}
