{ config, pkgs,... }: {
  imports = [
    ./programs
    ./nixos/gui/waybar
    ./nixos/gui/hyprland
  ];
  home = {
    username = "scott";
    homeDirectory = "/home/scott";
    stateVersion = "23.11";
  };

  programs.home-manager.enable = true;

  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = builtins.readFile ../modules/nixos/gui/hyprland/hyprland.conf;
  };
}
