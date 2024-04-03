{config, pkgs,lib,...}:{
  programs.waybar = {
    enable = true;
    source ./waybar-config.json;
  };
}
