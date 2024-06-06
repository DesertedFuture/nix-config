{ config, pkgs,... }: {
  imports = [
    ./programs
    ./nixos/gui/waybar
    ./nixos/gui/hyprland
    ./nixos/core/nvim
  ];
  home = {
    username = "scott";
    homeDirectory = "/home/scott";
    stateVersion = "23.11";
  };

  programs.home-manager.enable = true;
}
