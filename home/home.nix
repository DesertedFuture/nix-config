{ config, pkgs,... }: {
  imports = [
    ./programs
    #./linux/gui/waybar
    #./linux/gui/hyprland
  ];
  home = {
    username = "scott";
    homeDirectory = "/home/scott";
    stateVersion = "23.11";
  };

  programs.home-manager.enable = true;

}
