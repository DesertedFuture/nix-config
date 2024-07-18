{ config, pkgs,... }: {
  imports = [
    ./programs
    ./waybar
    ./hyprland
    ./nixos/core
  ];
  home = {
    username = "scott";
    homeDirectory = "/home/scott";
    stateVersion = "23.11";
  };

  programs.home-manager.enable = true;
}
